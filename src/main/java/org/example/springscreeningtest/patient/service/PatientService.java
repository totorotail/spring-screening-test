package org.example.springscreeningtest.patient.service;

import lombok.RequiredArgsConstructor;
import org.example.springscreeningtest.common.exception.CustomAccessDeniedException;
import org.example.springscreeningtest.common.exception.DuplicatePatientException;
import org.example.springscreeningtest.common.exception.PatientNotFoundException;
import org.example.springscreeningtest.hospital.entity.Hospital;
import org.example.springscreeningtest.hospital.repository.HospitalRepository;
import org.example.springscreeningtest.patient.dto.PatientDto;
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
  public PatientDto registerPatient(PatientDto patientDto) {
    Hospital hospital = getCurrentHospital();

    // 환자번호 중복 체크
    if (patientRepository.existsByHospitalAndPatientNumber(hospital, patientDto.getPatientNumber())) {
      throw new DuplicatePatientException("이미 등록된 환자번호입니다: " + patientDto.getPatientNumber());
    }

    Patient patient = Patient.builder()
        .hospital(hospital)
        .name(patientDto.getName())
        .residentRegistrationNumber(patientDto.getResidentRegistrationNumber())
        .phoneNumber(patientDto.getPhoneNumber())
        .patientNumber(patientDto.getPatientNumber())
        .build();

    Patient savedPatient = patientRepository.save(patient);

    return mapToDto(savedPatient);
  }

  @Transactional(readOnly = true)
  public Page<PatientDto> getAllPatients(Pageable pageable) {
    Hospital hospital = getCurrentHospital();
    return patientRepository.findByHospital(hospital, pageable)
        .map(this::mapToDto);
  }

  @Transactional(readOnly = true)
  public Page<PatientDto> searchPatientsByName(String name, Pageable pageable) {
    Hospital hospital = getCurrentHospital();
    return patientRepository.findByHospitalAndNameContaining(hospital, name, pageable)
        .map(this::mapToDto);
  }

  @Transactional(readOnly = true)
  public PatientDto getPatientById(Long id) {
    Hospital hospital = getCurrentHospital();
    Patient patient = patientRepository.findById(id)
        .orElseThrow(() -> new PatientNotFoundException("환자를 찾을 수 없습니다: " + id));

    // 본인 병원의 환자만 조회 가능
    if (!patient.getHospital().getId().equals(hospital.getId())) {
      throw new CustomAccessDeniedException("접근 권한이 없습니다");
    }

    return mapToDto(patient);
  }

  @Transactional
  public PatientDto updatePatient(Long id, PatientDto patientDto) {
    Hospital hospital = getCurrentHospital();
    Patient patient = patientRepository.findById(id)
        .orElseThrow(() -> new PatientNotFoundException("환자를 찾을 수 없습니다: " + id));

    // 본인 병원의 환자만 수정 가능
    if (!patient.getHospital().getId().equals(hospital.getId())) {
      throw new CustomAccessDeniedException("접근 권한이 없습니다");
    }

    // 환자번호 변경 시 중복 체크
    if (!patient.getPatientNumber().equals(patientDto.getPatientNumber()) &&
        patientRepository.existsByHospitalAndPatientNumber(hospital, patientDto.getPatientNumber())) {
      throw new DuplicatePatientException("이미 등록된 환자번호입니다: " + patientDto.getPatientNumber());
    }

    patient.setName(patientDto.getName());
    patient.setResidentRegistrationNumber(patientDto.getResidentRegistrationNumber());
    patient.setPhoneNumber(patientDto.getPhoneNumber());
    patient.setPatientNumber(patientDto.getPatientNumber());

    Patient updatedPatient = patientRepository.save(patient);

    return mapToDto(updatedPatient);
  }

  // 현재 인증된 병원 정보 조회
  private Hospital getCurrentHospital() {
    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
    return hospitalRepository.findByEmail(authentication.getName())
        .orElseThrow(() -> new IllegalStateException("인증 정보를 찾을 수 없습니다"));
  }

  // Patient 엔티티를 DTO로 변환
  private PatientDto mapToDto(Patient patient) {
    return PatientDto.builder()
        .id(patient.getId())
        .name(patient.getName())
        .residentRegistrationNumber(patient.getResidentRegistrationNumber())
        .phoneNumber(patient.getPhoneNumber())
        .patientNumber(patient.getPatientNumber())
        .build();
  }
}