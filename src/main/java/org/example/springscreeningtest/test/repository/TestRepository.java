package org.example.springscreeningtest.test.repository;

import java.util.Optional;
import org.example.springscreeningtest.test.entity.Test;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TestRepository extends JpaRepository<Test, Long> {
  Optional<Test> findByCode(String code);
}