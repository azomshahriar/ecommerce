package com.example.ecommerce.integration;

import com.example.ecommerce.service.WishListService;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.reactive.AutoConfigureWebTestClient;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.DynamicPropertyRegistry;
import org.springframework.test.context.DynamicPropertySource;
import org.testcontainers.containers.MySQLContainer;
import org.testcontainers.junit.jupiter.Testcontainers;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@AutoConfigureWebTestClient
@Testcontainers
@ActiveProfiles("test")
public class WishListServiceIntegrationTest {

  static final MySQLContainer MY_SQL_CONTAINER;

  @Autowired
  private WishListService wishListService;

  static {
    MY_SQL_CONTAINER = new MySQLContainer("mysql:8.0.29")
      .withDatabaseName("ecommerce");
    MY_SQL_CONTAINER.start();
  }

  @DynamicPropertySource
  static void configureTestProperties(DynamicPropertyRegistry registry) {
    registry.add("spring.datasource.url", () -> MY_SQL_CONTAINER.getJdbcUrl());
    registry.add("spring.datasource.username", () -> MY_SQL_CONTAINER.getUsername());
    registry.add("spring.datasource.password", () -> MY_SQL_CONTAINER.getPassword());
    registry.add("spring.jpa.hibernate.ddl-auto", () -> "none");

  }

  @BeforeEach
  public void beforeEach() {
    System.out.println("Testing Wish-List");
  }

  @Test
  public void wishList_shouldReturnProperList() {
    assertEquals(3, wishListService.wishListByCustomerId(1L));
  }

  @AfterEach
  public void afterEach() {
    System.out.println("After Each");
  }
}
