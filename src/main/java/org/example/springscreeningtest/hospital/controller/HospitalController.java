package org.example.springscreeningtest.hospital.controller;

import jakarta.validation.Valid;
import java.util.HashMap;
import java.util.Map;
import lombok.RequiredArgsConstructor;
import org.example.springscreeningtest.hospital.dto.InfoUpdateRequest;
import org.example.springscreeningtest.hospital.dto.LoginResponse;
import org.example.springscreeningtest.hospital.dto.LoginRequest;
import org.example.springscreeningtest.hospital.dto.PlanUpdateRequest;
import org.example.springscreeningtest.hospital.dto.RegistrationRequest;
import org.example.springscreeningtest.hospital.entity.Hospital;
import org.example.springscreeningtest.hospital.service.HospitalService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/hospital")
@RequiredArgsConstructor
public class HospitalController {
  private final HospitalService hospitalService;

  @PostMapping("/register")
  public ResponseEntity<LoginResponse> register(@Valid @RequestBody RegistrationRequest request) {
    return ResponseEntity.ok(hospitalService.register(request));
  }

  @PostMapping("/login")
  public ResponseEntity<LoginResponse> login(@Valid @RequestBody LoginRequest request) {
    return ResponseEntity.ok(hospitalService.login(request));
  }

  @PutMapping("/update")
  public ResponseEntity<Map<String, String>> updateInfo(@Valid @RequestBody InfoUpdateRequest request) {
    Hospital hospital = hospitalService.updateInfo(request);

    Map<String, String> response = new HashMap<>();
    response.put("message", "병원 정보가 성공적으로 업데이트되었습니다");
    response.put("email", hospital.getEmail());
    response.put("hospitalName", hospital.getHospitalName());
    response.put("location", hospital.getLocation().name());

    return ResponseEntity.ok(response);
  }

  @PutMapping("/plan")
  public ResponseEntity<Map<String, String>> updatePlan(@Valid @RequestBody PlanUpdateRequest request) {
    Hospital hospital = hospitalService.updatePlan(request);

    Map<String, String> response = new HashMap<>();
    response.put("message", "요금제가 성공적으로 변경되었습니다");
    response.put("email", hospital.getEmail());
    response.put("hospitalName", hospital.getHospitalName());
    response.put("plan", hospital.getPlan().name());

    return ResponseEntity.ok(response);
  }
}
