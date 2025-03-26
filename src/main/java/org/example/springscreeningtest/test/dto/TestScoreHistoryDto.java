package org.example.springscreeningtest.test.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.time.LocalDate;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class TestScoreHistoryDto {
  @JsonFormat(pattern = "yyyy-MM-dd")
  private LocalDate testDate;
  private Integer totalScore;
}