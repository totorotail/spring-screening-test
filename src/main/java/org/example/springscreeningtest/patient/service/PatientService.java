package org.example.springscreeningtest.patient.service;

import lombok.RequiredArgsConstructor;
import org.example.springscreeningtest.common.exception.CustomAccessDeniedException;
import org.example.springscreeningtest.common.exception.DuplicatePatientException;
import org.example.springscreeningtest.common.exception.PatientNotFoundException;
import org.example.springscreeningtest.hospital.entity.Hospital;
import org.example.springscreeningtest.hospital.repository.HospitalRepository;
import org.example.springscreeningtest.patient.dto.PatientCreateDto;
import org.example.springscreeningtest.patient.dto.PatientResponseDto;
import org.example.springscreeningtest.patient.dto.PatientUpdateDto;
import org.example.springscreeningtest.patient.entity.Patient;
import org.example.springscreeningtest.patient.repository.PatientRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class PatientService {

  private final PatientRepository patientRepository;
  private final HospitalRepository hospitalRepository;

  @Transactional
  public PatientResponseDto registerPatient(PatientCreateDto dto) {
    Hospital hospital = getCurrentHospital();

    // 환자번호 중복 체크
    if (patientRepository.existsByHospitalAndPatientNumber(hospital, dto.getPatientNumber())) {
      throw new DuplicatePatientException("이미 등록된 환자번호입니다: " + dto.getPatientNumber());
    }

    Patient patient = Patient.builder()
        .hospital(hospital)
        .name(dto.getName())
        .residentRegistrationNumber(dto.getResidentRegistrationNumber())
        .phoneNumber(dto.getPhoneNumber())
        .patientNumber(dto.getPatientNumber())
        .build();

    Patient savedPatient = patientRepository.save(patient);

    return mapToResponseDto(savedPatient);
  }

  @Transactional(readOnly = true)
  public Page<PatientResponseDto> getAllPatients(Pageable pageable) {
    Hospital hospital = getCurrentHospital();
    return patientRepository.findByHospital(hospital, pageable)
        .map(this::mapToResponseDto);
  }

  @Transactional(readOnly = true)
  public Page<PatientResponseDto> searchPatientsByName(String name, Pageable pageable) {
    Hospital hospital = getCurrentHospital();
    return patientRepository.findByHospitalAndNameContaining(hospital, name, pageable)
        .map(this::mapToResponseDto);
  }

  @Transactional(readOnly = true)
  public PatientResponseDto getPatientById(Long id) {
    Hospital hospital = getCurrentHospital();
    Patient patient = patientRepository.findById(id)
        .orElseThrow(() -> new PatientNotFoundException("환자를 찾을 수 없습니다: " + id));

    // 본인 병원의 환자만 조회 가능
    if (!patient.getHospital().getId().equals(hospital.getId())) {
      throw new CustomAccessDeniedException("접근 권한이 없습니다");
    }

    return mapToResponseDto(patient);
  }

  @Transactional
  public PatientResponseDto updatePatient(Long id, PatientUpdateDto dto) {
    Hospital hospital = getCurrentHospital();
    Patient patient = patientRepository.findById(id)
        .orElseThrow(() -> new PatientNotFoundException("환자를 찾을 수 없습니다: " + id));

    // 본인 병원의 환자만 수정 가능
    if (!patient.getHospital().getId().equals(hospital.getId())) {
      throw new CustomAccessDeniedException("접근 권한이 없습니다");
    }

    // 환자번호 변경 시 중복 체크
    if (!patient.getPatientNumber().equals(dto.getPatientNumber()) &&
        patientRepository.existsByHospitalAndPatientNumber(hospital, dto.getPatientNumber())) {
      throw new DuplicatePatientException("이미 등록된 환자번호입니다: " + dto.getPatientNumber());
    }

    patient.setName(dto.getName());
    patient.setResidentRegistrationNumber(dto.getResidentRegistrationNumber());
    patient.setPhoneNumber(dto.getPhoneNumber());
    patient.setPatientNumber(dto.getPatientNumber());

    Patient updatedPatient = patientRepository.save(patient);

    return mapToResponseDto(updatedPatient);
  }

  // 현재 인증된 병원 정보 조회
  private Hospital getCurrentHospital() {
    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
    return hospitalRepository.findByEmail(authentication.getName())
        .orElseThrow(() -> new IllegalStateException("인증 정보를 찾을 수 없습니다"));
  }

  // Patient 엔티티를 DTO로 변환
  private PatientResponseDto mapToResponseDto(Patient patient) {
    return PatientResponseDto.builder()
        .id(patient.getId())
        .name(patient.getName())
        .residentRegistrationNumber(patient.getResidentRegistrationNumber())
        .phoneNumber(patient.getPhoneNumber())
        .patientNumber(patient.getPatientNumber())
        .build();
  }
}