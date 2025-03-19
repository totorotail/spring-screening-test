package org.example.springscreeningtest.hospital.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.example.springscreeningtest.hospital.entity.Hospital;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class RegistrationRequest {

  @NotBlank(message = "이메일은 필수입니다")
  @Email(message = "유효한 이메일 형식이 아닙니다")
  private String email;

  @NotBlank(message = "비밀번호는 필수입니다")
  @Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z]).{8,}$",
      message = "비밀번호는 영문 소문자, 대문자 조합 8글자 이상이어야 합니다")
  private String password;

  @NotBlank(message = "병원명은 필수입니다")
  private String hospitalName;

  @NotBlank(message = "병원위치는 필수입니다")
  private String location;

  public Hospital.Region getLocationAsEnum() {
    try {
      return Hospital.Region.valueOf(location.toUpperCase());
    } catch (IllegalArgumentException e) {
      throw new IllegalArgumentException("유효한 지역이 아닙니다: " + location);
    }
  }
}
