package org.example.springscreeningtest.hospital.dto;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.example.springscreeningtest.hospital.entity.Plan;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PlanUpdateRequest {

  @NotBlank(message = "요금제는 필수입니다")
  private String plan;

  public Plan getPlanAsEnum() {
    try {
      return Plan.valueOf(plan.toUpperCase());
    } catch (IllegalArgumentException e) {
      throw new IllegalArgumentException("유효한 요금제가 아닙니다: " + plan);
    }
  }
}
