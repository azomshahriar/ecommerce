package com.example.ecommerce.repository;

import com.example.ecommerce.entity.Sale;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;

@Repository
public interface SaleRepository extends JpaRepository<Sale, Long> {

  // @Query("SELECT sum(s.amount) FROM Sale s WHERE s.createdDate >= CURDATE()")
  @Query("SELECT sum(s.amount) FROM Sale s WHERE s.createdDate >= CURRENT_DATE")
  public BigDecimal totalSaleAmountToday();

}
