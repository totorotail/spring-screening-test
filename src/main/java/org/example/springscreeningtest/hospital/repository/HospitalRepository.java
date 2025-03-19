package org.example.springscreeningtest.hospital.repository;

import java.util.Optional;
import org.example.springscreeningtest.hospital.entity.Hospital;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HospitalRepository extends JpaRepository<Hospital, Long> {
  Optional<Hospital> findByEmail(String email);
  boolean existsByEmail(String email);
}
