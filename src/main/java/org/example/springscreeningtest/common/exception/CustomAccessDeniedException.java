package org.example.springscreeningtest.common.exception;

// Spring Security의 AccessDeniedException과 혼동되지 않도록 Custom을 접두사로 사용
public class CustomAccessDeniedException extends RuntimeException {
  public CustomAccessDeniedException(String message) {
    super(message);
  }
}