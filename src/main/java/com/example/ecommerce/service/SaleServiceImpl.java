package com.example.ecommerce.service;

import com.example.ecommerce.repository.SaleRepository;

import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.Instant;
import java.util.Date;
import java.util.List;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class SaleServiceImpl implements SaleService {

  private final SaleRepository saleRepository;

  public BigDecimal totalSaleAmountToday() {
    return saleRepository.totalSaleAmountToday();
  }

  public Date maxSaleDay(Instant startDate, Instant endDate) {
    return null;
  }

  public List<Integer> topSellingItemByAmount(int size) {
    return null;
  }

  public List<Integer> topSellingItemLastMonthByNoOfSale(int size) {
    return null;
  }
}
