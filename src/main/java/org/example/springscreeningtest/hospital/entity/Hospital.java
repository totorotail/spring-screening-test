package org.example.springscreeningtest.hospital.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "hospitals")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Hospital {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @Column(nullable = false, unique = true)
  private String email;

  @Column(nullable = false)
  private String password;

  @Column(nullable = false)
  private String hospitalName;

  @Enumerated(EnumType.STRING)
  @Column(nullable = false)
  private Region location;

  @Enumerated(EnumType.STRING)
  private Role role = Role.ROLE_USER;

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

    public String getKoreanName() {
      return koreanName;
    }
  }

  public enum Role {
    ROLE_USER,
    ROLE_ADMIN
  }

}
