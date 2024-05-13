package com.example.ecommerce.service;

import com.example.ecommerce.entity.WishList;
import com.example.ecommerce.repository.WishListRepository;

import org.springframework.stereotype.Service;

import java.util.List;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class WishListServiceImpl implements WishListService {

  private final WishListRepository wishListRepository;

  public List<WishList> wishListByCustomerId(Long customerId) {
    return wishListRepository.findWishListByCustomerId(customerId);
  }
}
