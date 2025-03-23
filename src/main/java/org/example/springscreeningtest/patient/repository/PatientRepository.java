package org.example.springscreeningtest.patient.repository;

import java.util.Optional;
import org.example.springscreeningtest.hospital.entity.Hospital;
import org.example.springscreeningtest.patient.entity.Patient;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PatientRepository extends JpaRepository<Patient, Long> {
  Page<Patient> findByHospital(Hospital hospital, Pageable pageable);
  Page<Patient> findByHospitalAndNameContaining(Hospital hospital, String name, Pageable pageable);
  Optional<Patient> findByHospitalAndPatientNumber(Hospital hospital, String patientNumber);
  boolean existsByHospitalAndPatientNumber(Hospital hospital, String patientNumber);
}