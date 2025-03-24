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
public class TestResultDto {
  private Long patientId;
  private String testCode; // AUDIT, BAI 등

  @JsonFormat(pattern = "yyyy-MM-dd")
  private LocalDate testDate;

  private Integer totalScore;
  private List<TestAnswerDto> answers;
  private String comment; // 의사 또는 간호사의 코멘트
}
