package com.llh.service;

import com.llh.domain.EasyUser;

import java.util.List;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 11:13
 */
public interface EasyUserService {
      EasyUser getEasyUserByName(String name);
      List<EasyUser> getEasyUsers();
      void addEasyUser(EasyUser user);
}
