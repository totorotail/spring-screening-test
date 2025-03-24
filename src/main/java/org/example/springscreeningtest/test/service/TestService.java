package org.example.springscreeningtest.test.service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.example.springscreeningtest.common.exception.CustomAccessDeniedException;
import org.example.springscreeningtest.common.exception.JsonParsingException;
import org.example.springscreeningtest.common.exception.PatientNotFoundException;
import org.example.springscreeningtest.common.exception.TestNotFoundException;
import org.example.springscreeningtest.common.exception.TestResultProcessingException;
import org.example.springscreeningtest.hospital.entity.Hospital;
import org.example.springscreeningtest.hospital.repository.HospitalRepository;
import org.example.springscreeningtest.patient.entity.Patient;
import org.example.springscreeningtest.patient.repository.PatientRepository;
import org.example.springscreeningtest.test.dto.TestAnswerDto;
import org.example.springscreeningtest.test.dto.TestResultDto;
import org.example.springscreeningtest.test.entity.PatientTest;
import org.example.springscreeningtest.test.entity.Test;
import org.example.springscreeningtest.test.repository.PatientTestRepository;
import org.example.springscreeningtest.test.repository.TestRepository;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class TestService {

  private final TestRepository testRepository;
  private final PatientRepository patientRepository;
  private final PatientTestRepository patientTestRepository;
  private final HospitalRepository hospitalRepository;
  private final ObjectMapper objectMapper;

  @Transactional
  public void saveTestResult(TestResultDto testResultDto) {
    try {
      Hospital hospital = getCurrentHospital();

      // 환자 조회
      Patient patient = patientRepository.findById(testResultDto.getPatientId())
          .orElseThrow(() -> new PatientNotFoundException("환자를 찾을 수 없습니다: " + testResultDto.getPatientId()));

      // 본인 병원의 환자만 검사 결과 저장 가능
      if (!patient.getHospital().getId().equals(hospital.getId())) {
        throw new CustomAccessDeniedException("접근 권한이 없습니다");
      }

      // 검사 유형 조회
      Test test = testRepository.findByAcronym(testResultDto.getTestAcronym())
          .orElseThrow(() -> new TestNotFoundException("검사 유형을 찾을 수 없습니다: " + testResultDto.getTestAcronym()));

      // 이미 같은 날짜에 동일 검사가 있는지 확인
      Optional<PatientTest> existingTest = patientTestRepository.findByPatientAndTestAndTestDate(
          patient, test, testResultDto.getTestDate());

      PatientTest patientTest;
      if (existingTest.isPresent()) {
        // 기존 검사 결과 업데이트
        patientTest = existingTest.get();
      } else {
        // 새 검사 결과 생성
        patientTest = new PatientTest();
        patientTest.setPatient(patient);
        patientTest.setTest(test);
        patientTest.setTestDate(testResultDto.getTestDate());
      }

      // 점수 계산
      calculateScores(testResultDto, test);

      // 검사 결과 JSON으로 변환
      String testResultsJson = objectMapper.writeValueAsString(testResultDto.getAnswers());
      patientTest.setTestResults(testResultsJson);
      patientTest.setTotalScore(testResultDto.getTotalScore());
      patientTest.setComment(testResultDto.getComment());

      patientTestRepository.save(patientTest);

    } catch (Exception e) {
      throw new TestResultProcessingException("검사 결과 저장 중 오류가 발생했습니다", e);
    }
  }

  private void calculateScores(TestResultDto testResultDto, Test test) {
    try {
      // 검사 유형 정보에서 질문과 옵션 정보 조회
      JsonNode questionsConfig = objectMapper.readTree(test.getQuestionsConfig());
      JsonNode questions = questionsConfig.get("questions");

      int totalScore = 0;

      // 각 답변에 대해 점수 계산
      for (TestAnswerDto answer : testResultDto.getAnswers()) {
        if (answer.getSelectedOptionId() != null) {
          // 객관식 질문인 경우 점수 계산
          JsonNode question = findQuestionById(questions, answer.getQuestionId());
          if (question != null && question.has("options")) {
            JsonNode options = question.get("options");
            JsonNode selectedOption = findOptionById(options, answer.getSelectedOptionId());

            if (selectedOption != null && selectedOption.has("score")) {
              int score = selectedOption.get("score").asInt();
              answer.setScore(score);
              totalScore += score;
            }
          }
        }
      }

      testResultDto.setTotalScore(totalScore);

    } catch (Exception e) {
      throw new TestResultProcessingException("점수 계산 중 오류가 발생했습니다", e);
    }
  }

  private JsonNode findQuestionById(JsonNode questions, Integer questionId) {
    if (questions.isArray()) {
      Iterator<JsonNode> elements = questions.elements();
      while (elements.hasNext()) {
        JsonNode question = elements.next();
        if (question.has("id") && question.get("id").asInt() == questionId) {
          return question;
        }
      }
    }
    return null;
  }

  private JsonNode findOptionById(JsonNode options, Integer optionId) {
    if (options.isArray()) {
      Iterator<JsonNode> elements = options.elements();
      while (elements.hasNext()) {
        JsonNode option = elements.next();
        if (option.has("id") && option.get("id").asInt() == optionId) {
          return option;
        }
      }
    }
    return null;
  }

  @Transactional(readOnly = true)
  public List<TestResultDto> getPatientTestHistory(Long patientId) {
    Hospital hospital = getCurrentHospital();

    // 환자 조회
    Patient patient = patientRepository.findById(patientId)
        .orElseThrow(() -> new PatientNotFoundException("환자를 찾을 수 없습니다: " + patientId));

    // 본인 병원의 환자만 검사 결과 조회 가능
    if (!patient.getHospital().getId().equals(hospital.getId())) {
      throw new CustomAccessDeniedException("접근 권한이 없습니다");
    }

    // 환자의 모든 검사 결과 조회
    List<PatientTest> patientTests = patientTestRepository.findByPatientOrderByTestDateDesc(patient);

    return patientTests.stream()
        .map(this::mapToDto)
        .collect(Collectors.toList());
  }

  @Transactional(readOnly = true)
  public TestResultDto getTestResult(Long patientId, String testAcronym, LocalDate testDate) {
    try {
      Hospital hospital = getCurrentHospital();

      // 환자 조회
      Patient patient = patientRepository.findById(patientId)
          .orElseThrow(() -> new PatientNotFoundException("환자를 찾을 수 없습니다: " + patientId));

      // 본인 병원의 환자만 검사 결과 조회 가능
      if (!patient.getHospital().getId().equals(hospital.getId())) {
        throw new CustomAccessDeniedException("접근 권한이 없습니다");
      }

      // 검사 유형 조회
      Test test = testRepository.findByAcronym(testAcronym)
          .orElseThrow(() -> new TestNotFoundException("검사 유형을 찾을 수 없습니다: " + testAcronym));

      // 특정 날짜의 특정 검사 결과 조회
      PatientTest patientTest = patientTestRepository.findByPatientAndTestAndTestDate(patient, test, testDate)
          .orElseThrow(() -> new TestResultProcessingException("검사 결과를 찾을 수 없습니다"));

      return mapToDto(patientTest);

    } catch (Exception e) {
      if (e instanceof PatientNotFoundException ||
          e instanceof TestNotFoundException ||
          e instanceof TestResultProcessingException ||
          e instanceof CustomAccessDeniedException) {
        throw e;
      }
      throw new TestResultProcessingException("검사 결과 조회 중 오류가 발생했습니다", e);
    }
  }

  // 현재 인증된 병원 정보 조회
  private Hospital getCurrentHospital() {
    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
    return hospitalRepository.findByEmail(authentication.getName())
        .orElseThrow(() -> new IllegalStateException("인증 정보를 찾을 수 없습니다"));
  }

  // PatientTest 엔티티를 DTO로 변환
  private TestResultDto mapToDto(PatientTest patientTest) {
    try {
      List<TestAnswerDto> answers = new ArrayList<>();

      // JSON 문자열을 객체로 변환
      if (patientTest.getTestResults() != null && !patientTest.getTestResults().isEmpty()) {
        answers = objectMapper.readValue(
            patientTest.getTestResults(),
            objectMapper.getTypeFactory().constructCollectionType(List.class, TestAnswerDto.class)
        );
      }

      return TestResultDto.builder()
          .patientId(patientTest.getPatient().getId())
          .testAcronym(patientTest.getTest().getAcronym())
          .testDate(patientTest.getTestDate())
          .totalScore(patientTest.getTotalScore())
          .answers(answers)
          .comment(patientTest.getComment())
          .build();
    } catch (Exception e) {
      throw new JsonParsingException("검사 결과 변환 중 오류가 발생했습니다", e);
    }
  }
}