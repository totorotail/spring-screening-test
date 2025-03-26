package org.example.springscreeningtest.test.controller;

import jakarta.validation.Valid;
import java.time.LocalDate;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.example.springscreeningtest.test.dto.TestDetailWithResultDto;
import org.example.springscreeningtest.test.dto.TestHistorySummaryDto;
import org.example.springscreeningtest.test.dto.TestInfoDto;
import org.example.springscreeningtest.test.dto.TestResultDto;
import org.example.springscreeningtest.test.dto.TestScoreHistoryDto;
import org.example.springscreeningtest.test.service.TestService;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/test")
@RequiredArgsConstructor
public class TestController {

  private final TestService testService;

  /**
   * 특정 검사의 기본 정보를 조회
   * @param acronym 검사 약어 (예: AUDIT, BAI, PSQI 등)
   * @return 검사의 기본 정보 (ID, 약어, 제목, 설명, 질문 구성 등)
   */
  @GetMapping("/info/{acronym}")
  public ResponseEntity<TestInfoDto> getTestInfo(@PathVariable String acronym) {
    return ResponseEntity.ok(testService.getTestInfo(acronym));
  }

  /**
   * 모든 검사 목록을 조회
   * @return 모든 검사의 기본 정보 목록
   */
  @GetMapping("/info")
  public ResponseEntity<List<TestInfoDto>> getAllTests() {
    return ResponseEntity.ok(testService.getAllTests());
  }

  /**
   * 환자의 검사 결과를 저장
   * @param testResultDto 저장할 검사 결과 정보 (환자 ID, 검사 약어, 검사 날짜, 답변 목록, 코멘트 등)
   * @return 저장 성공 시 200 OK
   */
  @PostMapping
  public ResponseEntity<Void> saveTestResult(@Valid @RequestBody TestResultDto testResultDto) {
    testService.saveTestResult(testResultDto);
    return ResponseEntity.ok().build();
  }

  /**
   * 특정 환자의 모든 검사 이력을 조회
   * @param patientId 환자 ID
   * @return 환자의 모든 검사 결과 목록 (날짜별, 검사 유형별)
   */
  @GetMapping("/{patientId}")
  public ResponseEntity<List<TestResultDto>> getPatientTestHistory(@PathVariable Long patientId) {
    return ResponseEntity.ok(testService.getPatientTestHistory(patientId));
  }

  /**
   * 특정 환자의 특정 날짜에 수행한 특정 검사 결과를 조회
   * @param patientId 환자 ID
   * @param testAcronym 검사 약어 (예: AUDIT, BAI 등)
   * @param testDate 검사 날짜
   * @return 특정 검사 결과 상세 정보
   */
  @GetMapping("/{patientId}/{testAcronym}/{testDate}")
  public ResponseEntity<TestResultDto> getTestResult(
      @PathVariable Long patientId,
      @PathVariable String testAcronym,
      @PathVariable @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate testDate) {

    return ResponseEntity.ok(testService.getTestResult(patientId, testAcronym, testDate));
  }

  /**
   * 특정 환자의 특정 검사에 대한 시간별 점수 이력을 조회 (그래프 데이터용)
   * @param patientId 환자 ID
   * @param testAcronym 검사 약어 (예: AUDIT, BAI 등)
   * @return 날짜별 검사 총점 목록
   */
  @GetMapping("/{patientId}/score-history/{testAcronym}")
  public ResponseEntity<List<TestScoreHistoryDto>> getPatientTestScoreHistory(
      @PathVariable Long patientId,
      @PathVariable String testAcronym) {

    return ResponseEntity.ok(testService.getPatientTestScoreHistory(patientId, testAcronym));
  }

  /**
   * 특정 환자의 검사 이력 요약 정보를 조회 (날짜별 검사 목록)
   * @param patientId 환자 ID
   * @return 날짜별로 그룹화된 검사 약어 목록
   */
  @GetMapping("/{patientId}/history-summary")
  public ResponseEntity<List<TestHistorySummaryDto>> getPatientTestHistorySummary(@PathVariable Long patientId) {
    return ResponseEntity.ok(testService.getPatientTestHistorySummary(patientId));
  }

  /**
   * 특정 환자의 특정 날짜에 수행한 특정 검사의 상세 정보와 결과를 함께 조회
   * 검사 정보(제목, 설명 등)와 질문별 상세 정보(질문 텍스트, 보기 목록)를 환자의 응답과 함께 제공
   * @param patientId 환자 ID
   * @param testAcronym 검사 약어 (예: AUDIT, BAI 등)
   * @param testDate 검사 날짜
   * @return 검사 정보와 환자 응답이 매핑된 상세 결과
   */
  @GetMapping("/{patientId}/{testAcronym}/{testDate}/detail")
  public ResponseEntity<TestDetailWithResultDto> getTestDetailWithResult(
      @PathVariable Long patientId,
      @PathVariable String testAcronym,
      @PathVariable @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate testDate) {

    return ResponseEntity.ok(testService.getTestDetailWithResult(patientId, testAcronym, testDate));
  }
}