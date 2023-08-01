package com.llh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 10:29
 */
@Controller
public class EasyLoginController {

      @RequestMapping("/easyLogin/login.do")
      public String login(){
            return "success";
      }
}
