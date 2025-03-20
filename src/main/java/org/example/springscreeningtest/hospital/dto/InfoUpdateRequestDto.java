package org.example.springscreeningtest.hospital.dto;

import jakarta.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.example.springscreeningtest.hospital.entity.Region;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class InfoUpdateRequestDto {
  @Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z]).{8,}$",
      message = "비밀번호는 영문 소문자, 대문자 조합 8글자 이상이어야 합니다")
  private String password;

  private String hospitalName;

  private String location;

  // 모든 필드가 null인지 확인하는 메서드
  public boolean isEmpty() {
    return password == null && hospitalName == null && location == null;
  }

  public Region getLocationAsEnum() {
    if (location == null) {
      return null;
    }
    try {
      return Region.valueOf(location.toUpperCase());
    } catch (IllegalArgumentException e) {
      throw new IllegalArgumentException("유효한 지역이 아닙니다: " + location);
    }
  }
}
