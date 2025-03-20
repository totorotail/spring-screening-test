package org.example.springscreeningtest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class SpringScreeningTestApplication {

  public static void main(String[] args) {
    SpringApplication.run(SpringScreeningTestApplication.class, args);
  }

}
