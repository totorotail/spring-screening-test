package org.example.springscreeningtest.common.exception;

public class PlanLimitExceededException extends RuntimeException {
  public PlanLimitExceededException(String message) {
    super(message);
  }
}