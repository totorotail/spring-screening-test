package org.example.springscreeningtest.auth.service;

import java.util.Collections;
import lombok.RequiredArgsConstructor;
import org.example.springscreeningtest.auth.dto.AuthResponse;
import org.example.springscreeningtest.auth.dto.LoginRequest;
import org.example.springscreeningtest.auth.dto.RegistrationRequest;
import org.example.springscreeningtest.auth.security.JwtService;
import org.example.springscreeningtest.hospital.entity.Hospital;
import org.example.springscreeningtest.hospital.repository.HospitalRepository;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class AuthService {
  private final HospitalRepository hospitalRepository;
  private final PasswordEncoder passwordEncoder;
  private final JwtService jwtService;
  private final AuthenticationManager authenticationManager;

  @Transactional
  public AuthResponse register(RegistrationRequest request) {
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

    return AuthResponse.builder()
        .token(token)
        .email(hospital.getEmail())
        .hospitalName(hospital.getHospitalName())
        .build();
  }

  public AuthResponse login(LoginRequest request) {
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

    return AuthResponse.builder()
        .token(token)
        .email(hospital.getEmail())
        .hospitalName(hospital.getHospitalName())
        .build();
  }
}
