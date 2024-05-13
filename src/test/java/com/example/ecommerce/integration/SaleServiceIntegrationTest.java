package com.example.ecommerce.integration;

import com.example.ecommerce.service.SaleService;

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

import java.math.BigDecimal;
import java.time.Instant;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertIterableEquals;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@AutoConfigureWebTestClient
@Testcontainers
@ActiveProfiles("test")
public class SaleServiceIntegrationTest {

  static final MySQLContainer MY_SQL_CONTAINER;
  @Autowired
  private SaleService saleService;

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
    System.out.println("Testing Sale Service");
  }

  @Test
  public void totalSaleAmountCurrentDate_shouldEqualTestScript() {
    assertEquals(BigDecimal.valueOf(2500), saleService.totalSaleAmountToday());
  }


  @Test
  public void maxSaleDateInDateRange_shouldBeFine() {
    assertEquals("2024-03-13", saleService.maxSaleDay(Instant.parse("2024-03-01T00:00:00.000Z"), Instant.parse("2024-03-31T00:00:00.000Z")).getMaxDate().toString());
  }

  @Test
  public void topSellingItemForSaleAmount() {
    assertIterableEquals(List.of(1L, 2L, 7L, 4L, 5L), saleService.topSellingItemByAmount());
  }

  @Test
  public void topSellingItemForNoOfSell() {
    System.out.println(saleService.topSellingItemLastMonthByNoOfSale());
    assertIterableEquals(List.of(11L, 14L, 15L, 10L, 12L), saleService.topSellingItemLastMonthByNoOfSale());
  }
}
