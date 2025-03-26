package org.example.springscreeningtest.test.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.time.LocalDate;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class TestHistorySummaryDto {
  @JsonFormat(pattern = "yyyy-MM-dd")
  private LocalDate testDate;
  private List<String> testAcronyms;
}