package com.example.ecommerce.controller;

import com.example.ecommerce.entity.WishList;
import com.example.ecommerce.service.WishListService;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class WishListController {
  private final WishListService wishListService;

  @GetMapping(path = "/api/v1/wish-list/{customerId}")
  public List<WishList> wishList(@PathVariable("customerId") Long customerId) {
    return wishListService.wishListByCustomerId(customerId);
  }
}
