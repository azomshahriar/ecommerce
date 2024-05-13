package com.example.ecommerce.controller;

import com.example.ecommerce.dto.MaxDaySaleDto;
import com.example.ecommerce.service.SaleService;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.time.Instant;
import java.util.List;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class SaleController {

  private final SaleService saleService;

  @GetMapping(path = "/api/v1/sale-amount-by-current-date")
  public BigDecimal saleAmountByCurrentDate() {
    return saleService.totalSaleAmountToday();
  }

  @GetMapping(path = "/api/v1/max-day-sale/{fromDate}/{toDate}")
  public MaxDaySaleDto maxDaySale(@PathVariable("fromDate") Instant fromDate, @PathVariable("toDate") Instant toDate) {
    return saleService.maxSaleDay(fromDate, toDate);
  }

  @GetMapping(path = "/api/v1/top-selling-item/by-amount")
  public List<Long> topSellingItemByAmount() {
    return saleService.topSellingItemByAmount();
  }

  @GetMapping(path = "/api/v1/top-selling-item/by-number")
  public List<Long> topSellingItemByNumber() {
    return saleService.topSellingItemLastMonthByNoOfSale();
  }
}
