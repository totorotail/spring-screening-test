package org.example.springscreeningtest.test.controller;

import jakarta.validation.Valid;
import java.time.LocalDate;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.example.springscreeningtest.test.dto.TestResultDto;
import org.example.springscreeningtest.test.service.TestService;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/test")
@RequiredArgsConstructor
public class TestController {

  private final TestService testService;

  @PostMapping
  public ResponseEntity<Void> saveTestResult(@Valid @RequestBody TestResultDto testResultDto) {
    testService.saveTestResult(testResultDto);
    return ResponseEntity.ok().build();
  }

  @GetMapping("/{patientId}")
  public ResponseEntity<List<TestResultDto>> getPatientTestHistory(@PathVariable Long patientId) {
    return ResponseEntity.ok(testService.getPatientTestHistory(patientId));
  }

  @GetMapping("/{patientId}/{testAcronym}/{testDate}")
  public ResponseEntity<TestResultDto> getTestResult(
      @PathVariable Long patientId,
      @PathVariable String testAcronym,
      @PathVariable @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate testDate) {

    return ResponseEntity.ok(testService.getTestResult(patientId, testAcronym, testDate));
  }
}