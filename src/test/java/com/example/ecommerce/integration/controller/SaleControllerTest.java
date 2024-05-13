package com.example.ecommerce.integration.controller;

import com.example.ecommerce.dto.MaxDaySaleDto;
import com.example.ecommerce.entity.WishList;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.autoconfigure.web.reactive.AutoConfigureWebTestClient;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.server.LocalServerPort;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.DynamicPropertyRegistry;
import org.springframework.test.context.DynamicPropertySource;
import org.springframework.test.web.reactive.server.WebTestClient;
import org.testcontainers.containers.MySQLContainer;
import org.testcontainers.junit.jupiter.Testcontainers;

import java.math.BigDecimal;
import java.time.Instant;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertIterableEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@AutoConfigureWebTestClient
@Testcontainers
@ActiveProfiles("test")
public class SaleControllerTest {
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
  public void totalSaleAmountCurrentDate_shouldEqualTestScript() {
    webTestClient.get()
      .uri("/api/v1/sale-amount-by-current-date")
      .exchange()
      .expectStatus()
      .is2xxSuccessful()
      .expectBody(BigDecimal.class)
      .consumeWith(amount -> {
        assertEquals(BigDecimal.valueOf(2500), amount.getResponseBody());
      });
  }


  @Test
  public void maxSaleDateInDateRange_shouldBeFine() {
    webTestClient.get()
      .uri("/api/v1/max-day-sale/2024-03-01T00:00:00.000Z/2024-03-31T00:00:00.000Z")
      .exchange()
      .expectStatus()
      .is2xxSuccessful()
      .expectBody(MaxDaySaleDto.class)
      .consumeWith(maxDayDto -> {
        assertEquals("Wed Mar 13 06:00:00 BDT 2024", maxDayDto.getResponseBody().getMaxDate().toString());
      });
  }

  @Test
  public void topSellingItemForSaleAmount() {
    webTestClient.get()
      .uri("/api/v1/top-selling-item/by-amount")
      .exchange()
      .expectStatus()
      .is2xxSuccessful()
      .expectBodyList(Integer.class)
      .consumeWith(response -> {
        assertTrue(List.of(1, 2, 7, 4, 5).containsAll(response.getResponseBody()));
      });

  }

  @Test
  public void topSellingItemForNoOfSell() {
    webTestClient.get()
      .uri("/api/v1/top-selling-item/by-number")
      .exchange()
      .expectStatus()
      .is2xxSuccessful()
      .expectBodyList(Integer.class)
      .consumeWith(response -> {
        assertTrue(List.of(11, 14, 15, 10, 12).containsAll(response.getResponseBody()));
      });

  }
}
