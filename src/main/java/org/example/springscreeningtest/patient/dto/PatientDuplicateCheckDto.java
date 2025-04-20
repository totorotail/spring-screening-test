package org.example.springscreeningtest.patient.dto;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PatientDuplicateCheckDto {

  @NotBlank(message = "환자번호는 필수입니다")
  private String patientNumber;

  private Long excludePatientId; // (optional) 수정 중일 경우 본인의 ID 제외
}