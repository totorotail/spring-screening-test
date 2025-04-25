package org.example.springscreeningtest.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

  @Override
  public void addCorsMappings(CorsRegistry registry) {
    registry.addMapping("/**")
        .allowedOrigins("http://localhost:5173")
        .allowedMethods("GET", "POST", "PUT", "PATCH", "DELETE", "OPTIONS")
        .allowedHeaders("*")
        .allowCredentials(true);
  }

  // 프론트엔드 라우터 경로를 서버가 index.html로 포워딩하게 처리
  @Override
  public void addViewControllers(ViewControllerRegistry registry) {
    registry.addViewController("/{spring:[a-zA-Z0-9\\-]+}")
        .setViewName("forward:/index.html");
    registry.addViewController("/**/{spring:[a-zA-Z0-9\\-]+}")
        .setViewName("forward:/index.html");
    registry.addViewController("/{spring:[a-zA-Z0-9\\-]+}/**{spring:?!(\\.js|\\.css|\\.png)$}")
        .setViewName("forward:/index.html");
  }
}