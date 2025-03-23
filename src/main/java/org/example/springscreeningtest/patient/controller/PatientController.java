package org.example.springscreeningtest.patient.controller;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.springscreeningtest.patient.dto.PatientDto;
import org.example.springscreeningtest.patient.service.PatientService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/patient")
@RequiredArgsConstructor
public class PatientController {

  private final PatientService patientService;

  @PostMapping("/register")
  public ResponseEntity<PatientDto> registerPatient(@Valid @RequestBody PatientDto patientDto) {
    return ResponseEntity.ok(patientService.registerPatient(patientDto));
  }

  @GetMapping
  public ResponseEntity<Page<PatientDto>> getAllPatients(
      @PageableDefault(size = 10) Pageable pageable) {
    return ResponseEntity.ok(patientService.getAllPatients(pageable));
  }

  @GetMapping("/search")
  public ResponseEntity<Page<PatientDto>> searchPatients(
      @RequestParam String name,
      @PageableDefault(size = 10) Pageable pageable) {
    return ResponseEntity.ok(patientService.searchPatientsByName(name, pageable));
  }

  @GetMapping("/{id}")
  public ResponseEntity<PatientDto> getPatient(@PathVariable Long id) {
    return ResponseEntity.ok(patientService.getPatientById(id));
  }

  @PutMapping("/{id}")
  public ResponseEntity<PatientDto> updatePatient(
      @PathVariable Long id,
      @Valid @RequestBody PatientDto patientDto) {

    return ResponseEntity.ok(patientService.updatePatient(id, patientDto));
  }
}