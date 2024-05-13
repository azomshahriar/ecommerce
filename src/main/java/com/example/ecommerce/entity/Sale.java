package com.example.ecommerce.entity;

import java.math.BigDecimal;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "sale")
public class Sale extends AuditEntity {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @Column(name = "item_id")
  private Long itemId;

  @Column(name = "customer_id")
  private Long customerId;

  @Column(name = "amount")
  private BigDecimal amount;

  @Column(name = "no_of_item")
  private Integer noOfItem;
}
