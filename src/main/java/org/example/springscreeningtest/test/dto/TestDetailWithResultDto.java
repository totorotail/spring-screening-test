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
public class TestDetailWithResultDto {
  // 검사 정보 부분
  private Long testId;
  private String acronym;
  private String title;
  private String description;

  // 검사 결과 부분
  private Long patientId;
  @JsonFormat(pattern = "yyyy-MM-dd")
  private LocalDate testDate;
  private Integer totalScore;
  private List<QuestionWithAnswerDto> questionsWithAnswers;  // 질문과 응답이 매핑된 리스트
  private String comment;
}
