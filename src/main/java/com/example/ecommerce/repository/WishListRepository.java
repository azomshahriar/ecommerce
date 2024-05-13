package com.example.ecommerce.repository;

import com.example.ecommerce.entity.WishList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface WishListRepository extends JpaRepository<WishList, Long> {
  public List<WishList> findWishListByCustomerId(Long customerId);
}
