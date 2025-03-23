package org.example.springscreeningtest.patient.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PatientResponseDto {
  private Long id;
  private String name;
  private String residentRegistrationNumber;
  private String phoneNumber;
  private String patientNumber;
}