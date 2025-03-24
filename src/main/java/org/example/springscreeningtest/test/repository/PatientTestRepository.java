package org.example.springscreeningtest.test.repository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
import org.example.springscreeningtest.patient.entity.Patient;
import org.example.springscreeningtest.test.entity.PatientTest;
import org.example.springscreeningtest.test.entity.Test;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PatientTestRepository extends JpaRepository<PatientTest, Long> {
  List<PatientTest> findByPatientOrderByTestDateDesc(Patient patient);
  List<PatientTest> findByPatientAndTestOrderByTestDateDesc(Patient patient, Test test);
  Optional<PatientTest> findByPatientAndTestAndTestDate(Patient patient, Test test, LocalDate testDate);
  Page<PatientTest> findByPatient(Patient patient, Pageable pageable);
}