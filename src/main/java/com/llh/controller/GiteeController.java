package com.llh.controller;

import cn.hutool.core.lang.UUID;
import com.alibaba.fastjson.JSONObject;
import com.llh.domain.GiteeUser;
import com.llh.service.GiteeUserService;
import com.llh.utils.GiteeUtils;
import com.llh.utils.Md5Utils;
import com.llh.utils.TokenUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 16:03
 */
@Controller
public class GiteeController {
      @Autowired
      GiteeUserService giteeUserService;

      @RequestMapping("callback.do")
      public String callback(String code, HttpServletResponse response, Model model){
            JSONObject userInfoJson = GiteeUtils.getGiteeUserInfoJson(code);

            String name = userInfoJson.getString("name");
            String login = userInfoJson.getString("login");
            String avatar_url = userInfoJson.getString("avatar_url");
            Integer id = userInfoJson.getInteger("id");

            GiteeUser userDB = giteeUserService.getGiteeUserById(id);
            if(userDB==null){
                  String str = "123";
                  String salt = UUID.randomUUID().toString().substring(0, 8);
                  String md5String = Md5Utils.getMD5String(str + salt);

                  GiteeUser giteeUser = GiteeUser.builder()
                          .name(name)
                          .salt(salt)
                          .pwd(md5String)
                          .giteeId(id)
                          .nickName(login)
                          .avatarUrl(avatar_url)
                          .build();

                  giteeUserService.addGiteeUser(giteeUser);

                  TokenUtils.responseTokenByCookie(giteeUser,response);
            }else{
                  userDB.setNickName(login);
                  userDB.setAvatarUrl(avatar_url);

                  giteeUserService.updateGiteeUser(userDB);

                  TokenUtils.responseTokenByCookie(userDB,response);
            }

            model.addAttribute("nickName",login);
            model.addAttribute("avatarUrl",avatar_url);
            return "login_gitee";
      }
}
