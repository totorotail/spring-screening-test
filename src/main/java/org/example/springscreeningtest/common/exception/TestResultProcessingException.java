package org.example.springscreeningtest.common.exception;

// 검사 결과 처리 중 오류가 발생할 때의 예외
public class TestResultProcessingException extends RuntimeException {
  public TestResultProcessingException(String message, Throwable cause) {
    super(message, cause);
  }

  public TestResultProcessingException(String message) {
    super(message);
  }
}