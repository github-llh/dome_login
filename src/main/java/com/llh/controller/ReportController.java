package com.llh.controller;

import com.llh.domain.Bing;
import com.llh.domain.Zhu;
import com.llh.mapper.ReportMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 20:47
 */
@Controller
public class ReportController {
      @Autowired
      ReportMapper reportMapper;

      @RequestMapping("zhu.do")
      public @ResponseBody List<Zhu> zhu(String status){
            return reportMapper.getZhus(status);
      }

      @RequestMapping("zhu2.do")
      public @ResponseBody List<Zhu> zhu2(String status){
            return reportMapper.getZhus2(status);
      }

      @RequestMapping("bing.do")
      public @ResponseBody List<Bing> bing(String status){
            return reportMapper.getBings(status);
      }

      @RequestMapping("xian.do")
      public @ResponseBody List<Zhu> xian(String status){
            return reportMapper.getXians(status);
      }
}
