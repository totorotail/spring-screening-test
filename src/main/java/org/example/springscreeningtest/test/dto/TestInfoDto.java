package org.example.springscreeningtest.test.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class TestInfoDto {
  private Long id;
  private String acronym;
  private String title;
  private String description;
  private String questionsConfig;
}