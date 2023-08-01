package com.llh.service.impl;

import com.llh.domain.Order;
import com.llh.domain.OrderDict;
import com.llh.domain.OrderQuery;
import com.llh.mapper.OrderMapper;
import com.llh.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 19:32
 */
@Service
public class OrderServiceImpl implements OrderService {
      @Autowired
      OrderMapper orderMapper;

      @Override
      public List<Order> getOrders(OrderQuery query) {
            return orderMapper.getOrders(query);
      }

      @Override
      public List<OrderDict> getSource() {
            return orderMapper.getSource();
      }

      @Override
      public List<OrderDict> getClassIfy() {
            return orderMapper.getClassIfy();
      }
}
