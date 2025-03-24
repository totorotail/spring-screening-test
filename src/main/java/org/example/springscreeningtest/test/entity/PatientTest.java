package org.example.springscreeningtest.test.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import java.time.LocalDate;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.example.springscreeningtest.common.entity.BaseTimeEntity;
import org.example.springscreeningtest.patient.entity.Patient;

@Entity
@Table(name = "patient_tests")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PatientTest extends BaseTimeEntity {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "patient_id", nullable = false)
  private Patient patient;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "test_id", nullable = false)
  private Test test;

  @Column(name = "test_date", nullable = false)
  private LocalDate testDate;

  @Column(name = "total_score")
  private Integer totalScore;

  @Column(name = "test_results", columnDefinition = "TEXT")
  private String testResults; // JSON 형식으로 환자의 응답 결과 저장

  @Column(name = "comment", columnDefinition = "TEXT")
  private String comment; // 의사 또는 간호사가 남긴 코멘트
}