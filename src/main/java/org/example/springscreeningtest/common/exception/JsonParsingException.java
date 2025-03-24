package org.example.springscreeningtest.common.exception;


// JSON 파싱 중 오류가 발생할 때의 예외
public class JsonParsingException extends RuntimeException {
  public JsonParsingException(String message, Throwable cause) {
    super(message, cause);
  }

  public JsonParsingException(String message) {
    super(message);
  }
}