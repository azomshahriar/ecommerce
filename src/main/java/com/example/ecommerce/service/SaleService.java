package com.example.ecommerce.service;

import java.math.BigDecimal;
import java.time.Instant;
import java.util.Date;
import java.util.List;

public interface SaleService {

  BigDecimal totalSaleAmountToday();

  Date maxSaleDay(Instant startDate, Instant endDate);

  List<Integer> topSellingItemByAmount(int size);

  List<Integer> topSellingItemLastMonthByNoOfSale(int size);


}
