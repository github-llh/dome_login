package com.llh.service.impl;

import com.llh.domain.GiteeUser;
import com.llh.mapper.GiteeUserMapper;
import com.llh.service.GiteeUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 16:16
 */
@Service
public class GiteeUserServiceImpl implements GiteeUserService {
      @Autowired
      GiteeUserMapper giteeUserMapper;

      @Override
      public GiteeUser getGiteeUserById(Integer giteeId) {
            return giteeUserMapper.getGiteeUserById(giteeId);
      }

      @Override
      public void addGiteeUser(GiteeUser user) {
            giteeUserMapper.addGiteeUser(user);
      }

      @Override
      public void updateGiteeUser(GiteeUser userDB) {
            giteeUserMapper.updateGiteeUser(userDB);
      }
}
