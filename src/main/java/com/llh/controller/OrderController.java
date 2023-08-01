package com.llh.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.llh.domain.Order;
import com.llh.domain.OrderDict;
import com.llh.domain.OrderQuery;
import com.llh.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 19:30
 */
@Controller
public class OrderController {
      @Autowired
      OrderService orderService;

      @RequestMapping("list.do")
      public String list(OrderQuery query, Model model,String pageNum){
            PageHelper.startPage(Integer.parseInt(pageNum==null?"1":pageNum),5);
            List<Order> orders = orderService.getOrders(query);
            PageInfo<Order> pageInfo = new PageInfo<>(orders);

            List<OrderDict> classIfy = orderService.getClassIfy();
            List<OrderDict> source = orderService.getSource();
            model.addAttribute("pageInfo",pageInfo);
            model.addAttribute("classIfy",classIfy);
            model.addAttribute("source",source);
            model.addAttribute("query",query);
            return "order_list";
      }
}
