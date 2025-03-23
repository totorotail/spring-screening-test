package org.example.springscreeningtest.common.exception;

public class DuplicatePatientException extends RuntimeException {
  public DuplicatePatientException(String message) {
    super(message);
  }
}