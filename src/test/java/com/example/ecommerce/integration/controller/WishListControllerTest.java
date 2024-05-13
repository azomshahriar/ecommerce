package com.example.ecommerce.integration.controller;

import com.example.ecommerce.entity.WishList;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.web.server.LocalServerPort;
import org.springframework.test.context.DynamicPropertyRegistry;
import org.springframework.test.context.DynamicPropertySource;
import org.springframework.test.web.reactive.server.WebTestClient;

import org.testcontainers.containers.MySQLContainer;
import org.springframework.boot.test.autoconfigure.web.reactive.AutoConfigureWebTestClient;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import org.testcontainers.junit.jupiter.Testcontainers;


import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@AutoConfigureWebTestClient
@Testcontainers
@ActiveProfiles("test")
public class WishListControllerTest {
  static final MySQLContainer MY_SQL_CONTAINER;

  @LocalServerPort
  private int port;

  WebTestClient webTestClient;

  static {
    MY_SQL_CONTAINER = new MySQLContainer("mysql:8.0.29")
      .withDatabaseName("ecommerce");
    MY_SQL_CONTAINER.start();
  }

  @BeforeEach
  public void setUp() {
    webTestClient = WebTestClient.bindToServer().baseUrl("http://localhost:" + port).build();
  }

  @DynamicPropertySource
  static void configureTestProperties(DynamicPropertyRegistry registry) {
    registry.add("spring.datasource.url", () -> MY_SQL_CONTAINER.getJdbcUrl());
    registry.add("spring.datasource.username", () -> MY_SQL_CONTAINER.getUsername());
    registry.add("spring.datasource.password", () -> MY_SQL_CONTAINER.getPassword());
    registry.add("spring.jpa.hibernate.ddl-auto", () -> "none");

  }

  @Test
  void testWishListAPI() {
    webTestClient.get()
      .uri("/api/v1/wish-list/1")
      .exchange()
      .expectStatus()
      .is2xxSuccessful()
      .expectBodyList(WishList.class)
      .consumeWith(listOfObject -> {
        var list = listOfObject.getResponseBody();
        assertEquals(3, list.size());
      });
  }


}
