package com.example.ecommerce.service;

import com.example.ecommerce.dto.MaxDaySaleDto;

import java.math.BigDecimal;
import java.time.Instant;
import java.util.Date;
import java.util.List;

public interface SaleService {

  BigDecimal totalSaleAmountToday();

  MaxDaySaleDto maxSaleDay(Instant startDate, Instant endDate);

  List<Long> topSellingItemByAmount();

  List<Long> topSellingItemLastMonthByNoOfSale();


}
