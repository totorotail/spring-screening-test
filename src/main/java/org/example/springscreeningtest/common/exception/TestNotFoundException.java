package org.example.springscreeningtest.common.exception;

// 검사 유형을 찾을 수 없을 때 발생하는 예외
public class TestNotFoundException extends RuntimeException {
  public TestNotFoundException(String message) {
    super(message);
  }
}