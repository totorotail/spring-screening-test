package org.example.springscreeningtest.hospital.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.example.springscreeningtest.common.entity.BaseTimeEntity;

@Entity
@Table(name = "hospitals")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Hospital extends BaseTimeEntity {

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
  @Column(nullable = false)
  private Plan plan = Plan.STARTER;

  @PrePersist
  protected void onCreate() {
    if (plan == null) {
      plan = Plan.STARTER;
    }
  }

  @Enumerated(EnumType.STRING)
  private Role role = Role.ROLE_USER;

}
