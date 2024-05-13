package com.example.ecommerce.service;

import com.example.ecommerce.dto.MaxDaySaleDto;
import com.example.ecommerce.repository.SaleRepository;
import com.example.ecommerce.util.DateTimeUtil;

import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.Instant;
import java.util.Calendar;
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

  public MaxDaySaleDto maxSaleDay(Instant startDate, Instant endDate) {
    return saleRepository.findMaxDailySaleBetweenDates(startDate, endDate);
  }

  public List<Long> topSellingItemByAmount() {
    return saleRepository.topSellingItemsBySaleAmount();
  }

  public List<Long> topSellingItemLastMonthByNoOfSale() {
    return saleRepository.findTopSellingItemsLastMonth(DateTimeUtil.firstDateOfLastMonth(), DateTimeUtil.lastDateOfLastMonth());
  }
}
