package org.example.springscreeningtest.test.controller;

import jakarta.validation.Valid;
import java.time.LocalDate;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.example.springscreeningtest.test.dto.TestDetailWithResultDto;
import org.example.springscreeningtest.test.dto.TestHistorySummaryDto;
import org.example.springscreeningtest.test.dto.TestInfoDto;
import org.example.springscreeningtest.test.dto.TestResultDto;
import org.example.springscreeningtest.test.dto.TestScoreHistoryDto;
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

  @GetMapping("/info/{acronym}")
  public ResponseEntity<TestInfoDto> getTestInfo(@PathVariable String acronym) {
    return ResponseEntity.ok(testService.getTestInfo(acronym));
  }

  @GetMapping("/info")
  public ResponseEntity<List<TestInfoDto>> getAllTests() {
    return ResponseEntity.ok(testService.getAllTests());
  }

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

  @GetMapping("/{patientId}/score-history/{testAcronym}")
  public ResponseEntity<List<TestScoreHistoryDto>> getPatientTestScoreHistory(
      @PathVariable Long patientId,
      @PathVariable String testAcronym) {

    return ResponseEntity.ok(testService.getPatientTestScoreHistory(patientId, testAcronym));
  }

  @GetMapping("/{patientId}/history-summary")
  public ResponseEntity<List<TestHistorySummaryDto>> getPatientTestHistorySummary(@PathVariable Long patientId) {
    return ResponseEntity.ok(testService.getPatientTestHistorySummary(patientId));
  }

  @GetMapping("/{patientId}/{testAcronym}/{testDate}/detail")
  public ResponseEntity<TestDetailWithResultDto> getTestDetailWithResult(
      @PathVariable Long patientId,
      @PathVariable String testAcronym,
      @PathVariable @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate testDate) {

    return ResponseEntity.ok(testService.getTestDetailWithResult(patientId, testAcronym, testDate));
  }
}