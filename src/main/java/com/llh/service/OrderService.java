package com.llh.service;

import com.llh.domain.Order;
import com.llh.domain.OrderDict;
import com.llh.domain.OrderQuery;

import java.util.List;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 19:31
 */
public interface OrderService {
      List<Order> getOrders(OrderQuery query);
      List<OrderDict> getSource();
      List<OrderDict> getClassIfy();
}
