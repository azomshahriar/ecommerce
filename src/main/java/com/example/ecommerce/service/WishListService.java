package com.example.ecommerce.service;

import com.example.ecommerce.entity.WishList;

import java.util.List;

public interface WishListService {
  List<WishList> wishListByCustomerId(Long customerId);
}
