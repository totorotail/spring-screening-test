package org.example.springscreeningtest.patient.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.example.springscreeningtest.common.entity.BaseTimeEntity;
import org.example.springscreeningtest.hospital.entity.Hospital;

@Entity
@Table(name = "patients")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Patient extends BaseTimeEntity {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "hospital_id", nullable = false)
  private Hospital hospital;

  @Column(nullable = false)
  private String name;

  @Column(name = "resident_registration_number", nullable = false)
  private String residentRegistrationNumber;

  @Column(name = "phone_number", nullable = false)
  private String phoneNumber;

  @Column(name = "patient_number", nullable = false)
  private String patientNumber;
}