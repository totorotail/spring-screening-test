package org.example.springscreeningtest.hospital.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.example.springscreeningtest.hospital.entity.Plan;
import org.example.springscreeningtest.hospital.entity.Region;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class HospitalInfoResponseDto {
  private String email;
  private String hospitalName;
  private Region location;
  private Plan plan;
}