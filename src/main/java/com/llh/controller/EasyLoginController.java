package com.llh.controller;

import cn.hutool.core.lang.UUID;
import com.llh.domain.EasyUser;
import com.llh.service.EasyUserService;
import com.llh.utils.Md5Utils;
import com.llh.utils.TokenUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 10:29
 */
@Controller
public class EasyLoginController {
      @Autowired
      EasyUserService easyUserService;

      @RequestMapping("login.do")
      public String login(@Valid EasyUser user, BindingResult result, Model model, HttpServletResponse response){
            if(result.hasErrors()){
                  String message = result.getAllErrors().get(0).getDefaultMessage();
                  model.addAttribute("error",message);
                  return "login_easy";
            }

            EasyUser UserDB = easyUserService.getEasyUserByName(user.getName());
            if(UserDB==null){
                  model.addAttribute("error","该用户不存在");
                  return "login_easy";
            }

            String salt = UserDB.getSalt();
            String pwd = UserDB.getPwd();
            String md5String = Md5Utils.getMD5String(user.getPwd() + salt);
            if(!pwd.equals(md5String)){
                  model.addAttribute("error","密码错误");
                  return "login_easy";
            }

            model.addAttribute("user",easyUserService.getEasyUsers());

            TokenUtils.responseTokenByCookie(UserDB,response);
            return "success";
      }

      @RequestMapping("register.do")
      public String register(@Valid EasyUser user,BindingResult result,Model model,HttpServletResponse response){
            if(result.hasErrors()){
                  String message = result.getAllErrors().get(0).getDefaultMessage();
                  model.addAttribute("error",message);
                  return "login_register";
            }

            EasyUser UserDB = easyUserService.getEasyUserByName(user.getName());
            if(UserDB!=null){
                  model.addAttribute("error","该用户已存在");
                  return "login_register";
            }

            String salt = UUID.randomUUID().toString().substring(0, 8);
            String md5String = Md5Utils.getMD5String(user.getPwd() + salt);
            EasyUser easyUser = EasyUser.builder()
                    .name(user.getName())
                    .pwd(md5String)
                    .salt(salt)
                    .build();

            easyUserService.addEasyUser(easyUser);
            return "login_easy";
      }
}
