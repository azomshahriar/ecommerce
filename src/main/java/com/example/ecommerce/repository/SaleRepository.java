package com.example.ecommerce.repository;

import com.example.ecommerce.dto.MaxDaySaleDto;
import com.example.ecommerce.entity.Sale;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.time.Instant;
import java.util.List;

@Repository
public interface SaleRepository extends JpaRepository<Sale, Long> {

  @Query("SELECT sum(s.amount) FROM Sale s WHERE s.createdDate >= CURRENT_DATE")
  public BigDecimal totalSaleAmountToday();

  @Query("SELECT new com.example.ecommerce.dto.MaxDaySaleDto (FUNCTION('DATE', s.createdDate), SUM(s.amount) ) " +
    "FROM Sale s " +
    "WHERE s.createdDate >= :fromDate AND s.createdDate <= :toDate " +
    "GROUP BY FUNCTION('DATE', s.createdDate) " +
    "ORDER BY SUM(s.amount) DESC limit 1")
  MaxDaySaleDto findMaxDailySaleBetweenDates(@Param("fromDate") Instant fromDate, @Param("toDate") Instant toDate);


  @Query("SELECT s.itemId, SUM(s.amount)  " +
    "FROM Sale s " +
    "GROUP BY s.itemId " +
    "ORDER BY SUM(s.amount) DESC limit 5")
  List<Long> topSellingItemsBySaleAmount();

  @Query("SELECT s.itemId, SUM(s.noOfItem) " +
    "FROM Sale s " +
    "WHERE s.createdDate >= :fromDate " +
    "AND s.createdDate <= :toDate " +
    "GROUP BY s.itemId " +
    "ORDER BY SUM(s.noOfItem) DESC limit 5")
  List<Long> findTopSellingItemsLastMonth(@Param("fromDate") Instant fromDate, @Param("toDate") Instant toDate);

}
