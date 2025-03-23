package org.example.springscreeningtest.patient.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PatientDto {
  private Long id;

  @NotBlank(message = "환자명은 필수입니다")
  private String name;

  @NotBlank(message = "주민등록번호는 필수입니다")
  @Pattern(regexp = "\\d{6}-\\d{7}", message = "올바른 주민등록번호 형식이 아닙니다")
  private String residentRegistrationNumber;

  @NotBlank(message = "연락처는 필수입니다")
  @Pattern(regexp = "\\d{2,3}-\\d{3,4}-\\d{4}", message = "올바른 연락처 형식이 아닙니다")
  private String phoneNumber;

  @NotBlank(message = "환자번호는 필수입니다")
  private String patientNumber;
}