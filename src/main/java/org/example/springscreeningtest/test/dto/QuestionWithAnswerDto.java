package org.example.springscreeningtest.test.dto;

import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class QuestionWithAnswerDto {
  private Integer questionId;
  private String questionText;
  private String questionType;
  private List<OptionDto> options;
  private Integer selectedOptionId;
  private String textAnswer;
  private Integer score;
}