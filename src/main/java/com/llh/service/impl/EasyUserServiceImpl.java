package com.llh.service.impl;

import com.llh.domain.EasyUser;
import com.llh.mapper.EasyUserMapper;
import com.llh.service.EasyUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 11:14
 */
@Service
public class EasyUserServiceImpl implements EasyUserService {
      @Autowired
      EasyUserMapper easyUserMapper;

      @Override
      public EasyUser getEasyUserByName(String name) {
            return easyUserMapper.getEasyUserByName(name);
      }

      @Override
      public List<EasyUser> getEasyUsers() {
            return easyUserMapper.getEasyUsers();
      }
}
