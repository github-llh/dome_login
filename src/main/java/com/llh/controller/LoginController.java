package com.llh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 10:09
 */
@Controller
public class LoginController {

      /**
       * 前往登录选择页面
       * @return
       */
      @RequestMapping("gotoLogin.do")
      public String gotoLogin(){
            return "login_page";
      }

      /**
       * 前往普通登录页面
       * @return
       */
      @RequestMapping("gotoEasyLogin.do")
      public String gotoEasyLogin(){
            return "login_easy";
      }

      /**
       * 前往短信登录页面
       * @return
       */
      @RequestMapping("gotoSmsLogin.do")
      public String gotoSmsLogin(){
            return "login_sms";
      }

      /**
       * 前往第三方登录页面
       * @return
       */
      @RequestMapping("gotoGiteeLogin.do")
      public String gotoGiteeLogin(){
            return "login_gitee";
      }
}
