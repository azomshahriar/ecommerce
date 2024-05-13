package com.example.ecommerce.dto;

import java.math.BigDecimal;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class MaxDaySaleDto {
  private Date maxDate;
  private BigDecimal saleAmount;

  public MaxDaySaleDto(Date maxDate, BigDecimal saleAmount) {
    this.maxDate = maxDate;
    this.saleAmount = saleAmount;
  }

  @Override
  public String toString() {
    return "MaxDaySaleDto{" +
      "maxDate=" + maxDate +
      ", saleAmount=" + saleAmount +
      '}';
  }
}
