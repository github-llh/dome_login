package com.llh.mapper;

import com.llh.domain.EasyUser;

import java.util.List;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 10:08
 */
public interface EasyUserMapper {
      EasyUser getEasyUserByName(String name);
      List<EasyUser> getEasyUsers();
      void addEasyUser(EasyUser user);
}
