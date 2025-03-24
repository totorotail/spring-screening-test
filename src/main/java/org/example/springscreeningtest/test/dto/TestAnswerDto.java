package org.example.springscreeningtest.test.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class TestAnswerDto {
  private Integer questionId;
  private Integer selectedOptionId; // 객관식인 경우
  private String textAnswer;        // 주관식인 경우
  private Integer score;            // 백엔드에서 계산됨
}
