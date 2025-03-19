package org.example.springscreeningtest.hospital.controller;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.springscreeningtest.hospital.dto.LoginResponse;
import org.example.springscreeningtest.hospital.dto.LoginRequest;
import org.example.springscreeningtest.hospital.dto.RegistrationRequest;
import org.example.springscreeningtest.hospital.service.HospitalService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/auth")
@RequiredArgsConstructor
public class HospitalController {
  private final HospitalService authService;

  @PostMapping("/register")
  public ResponseEntity<LoginResponse> register(@Valid @RequestBody RegistrationRequest request) {
    return ResponseEntity.ok(authService.register(request));
  }

  @PostMapping("/login")
  public ResponseEntity<LoginResponse> login(@Valid @RequestBody LoginRequest request) {
    return ResponseEntity.ok(authService.login(request));
  }
}
