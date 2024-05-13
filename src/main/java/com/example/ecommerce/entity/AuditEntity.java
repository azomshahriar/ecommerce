package com.example.ecommerce.entity;

import java.time.Instant;

import jakarta.persistence.Column;
import jakarta.persistence.MappedSuperclass;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@MappedSuperclass
public abstract class AuditEntity {

  @Column(name = "created_date")
  private Instant createdDate;

  @Column(name = "last_modified_date")
  private Instant lastModifiedDate;

  @Column(name = "created_by")
  private Long createdBy;

  @Column(name = "last_modified_by")
  private Long lastModifiedBy;
}
