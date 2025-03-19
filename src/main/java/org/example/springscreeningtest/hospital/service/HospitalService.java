package org.example.springscreeningtest.hospital.service;

import java.util.Collections;
import lombok.RequiredArgsConstructor;
import org.example.springscreeningtest.hospital.dto.InfoUpdateRequest;
import org.example.springscreeningtest.hospital.dto.LoginResponse;
import org.example.springscreeningtest.hospital.dto.LoginRequest;
import org.example.springscreeningtest.hospital.dto.PlanUpdateRequest;
import org.example.springscreeningtest.hospital.dto.RegistrationRequest;
import org.example.springscreeningtest.security.jwt.JwtService;
import org.example.springscreeningtest.hospital.entity.Hospital;
import org.example.springscreeningtest.hospital.repository.HospitalRepository;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class HospitalService {
  private final HospitalRepository hospitalRepository;
  private final PasswordEncoder passwordEncoder;
  private final JwtService jwtService;
  private final AuthenticationManager authenticationManager;

  @Transactional
  public LoginResponse register(RegistrationRequest request) {
    // Check if email already exists
    if (hospitalRepository.existsByEmail(request.getEmail())) {
      throw new IllegalArgumentException("이메일이 이미 사용중입니다");
    }

    // Create new hospital
    Hospital hospital = Hospital.builder()
        .email(request.getEmail())
        .password(passwordEncoder.encode(request.getPassword()))
        .hospitalName(request.getHospitalName())
        .location(request.getLocationAsEnum())
        .role(Hospital.Role.ROLE_USER)
        .build();

    hospitalRepository.save(hospital);

    // Generate JWT token
    String token = jwtService.generateToken(
        new User(hospital.getEmail(), hospital.getPassword(),
            Collections.singletonList(
                new org.springframework.security.core.authority.SimpleGrantedAuthority(
                    hospital.getRole().name())
            )
        )
    );

    return LoginResponse.builder()
        .token(token)
        .email(hospital.getEmail())
        .hospitalName(hospital.getHospitalName())
        .build();
  }

  public LoginResponse login(LoginRequest request) {
    // Authenticate user
    Authentication authentication = authenticationManager.authenticate(
        new UsernamePasswordAuthenticationToken(
            request.getEmail(),
            request.getPassword()
        )
    );

    // If authentication successful, generate token
    User user = (User) authentication.getPrincipal();

    Hospital hospital = hospitalRepository.findByEmail(user.getUsername())
        .orElseThrow(() -> new IllegalArgumentException("병원 정보를 찾을 수 없습니다"));

    String token = jwtService.generateToken(user);

    return LoginResponse.builder()
        .token(token)
        .email(hospital.getEmail())
        .hospitalName(hospital.getHospitalName())
        .build();
  }

  @Transactional
  public Hospital updateInfo(InfoUpdateRequest request) {
    // 현재 인증된 사용자의 이메일 가져오기
    String email = getCurrentUserEmail();

    // 병원 정보 조회
    Hospital hospital = hospitalRepository.findByEmail(email)
        .orElseThrow(() -> new IllegalArgumentException("병원 정보를 찾을 수 없습니다"));

    // 변경할 정보가 없는 경우 예외 처리
    if (request.isEmpty()) {
      throw new IllegalArgumentException("변경할 정보가 없습니다");
    }

    // 비밀번호 변경
    if (request.getPassword() != null) {
      hospital.setPassword(passwordEncoder.encode(request.getPassword()));
    }

    // 병원명 변경
    if (request.getHospitalName() != null) {
      hospital.setHospitalName(request.getHospitalName());
    }

    // 위치 변경
    if (request.getLocation() != null) {
      hospital.setLocation(request.getLocationAsEnum());
    }

    return hospitalRepository.save(hospital);
  }

  @Transactional
  public Hospital updatePlan(PlanUpdateRequest request) {
    // 현재 인증된 사용자의 이메일 가져오기
    String email = getCurrentUserEmail();

    // 병원 정보 조회
    Hospital hospital = hospitalRepository.findByEmail(email)
        .orElseThrow(() -> new IllegalArgumentException("병원 정보를 찾을 수 없습니다"));

    // 요금제 변경
    hospital.setPlan(request.getPlanAsEnum());

    return hospitalRepository.save(hospital);
  }

  // 현재 인증된 사용자의 이메일 조회
  private String getCurrentUserEmail() {
    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
    if (authentication == null || !authentication.isAuthenticated()) {
      throw new IllegalStateException("인증되지 않은 사용자입니다");
    }
    return authentication.getName();
  }
}
