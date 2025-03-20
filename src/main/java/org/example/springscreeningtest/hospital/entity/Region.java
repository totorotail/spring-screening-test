package org.example.springscreeningtest.hospital.entity;

import lombok.Getter;

@Getter
public enum Region {
  SEOUL("서울"),
  GYEONGGI("경기도"),
  CHUNGCHEONG("충청도"),
  JEOLLA("전라도"),
  GANGWON("강원도"),
  GYEONGSANG("경상도");

  private final String koreanName;

  Region(String koreanName) {
    this.koreanName = koreanName;
  }
}