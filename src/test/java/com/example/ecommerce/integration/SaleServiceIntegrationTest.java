package com.example.ecommerce.integration;
import com.example.ecommerce.service.SaleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.reactive.AutoConfigureWebTestClient;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.DynamicPropertyRegistry;
import org.springframework.test.context.DynamicPropertySource;
import org.testcontainers.containers.MySQLContainer;
import org.testcontainers.junit.jupiter.Testcontainers;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@AutoConfigureWebTestClient
@Testcontainers
public class SaleServiceIntegrationTest {

  static final MySQLContainer MY_SQL_CONTAINER;

  @Autowired
  private SaleService saleService;

  static {
    MY_SQL_CONTAINER = new MySQLContainer("mysql:latest");
    MY_SQL_CONTAINER.start();
  }

  @DynamicPropertySource
  static void configureTestProperties(DynamicPropertyRegistry registry){
    registry.add("spring.datasource.url",() -> MY_SQL_CONTAINER.getJdbcUrl());
    registry.add("spring.datasource.username",() -> MY_SQL_CONTAINER.getUsername());
    registry.add("spring.datasource.password",() -> MY_SQL_CONTAINER.getPassword());
    registry.add("spring.jpa.hibernate.ddl-auto",() -> "create");

  }
}
