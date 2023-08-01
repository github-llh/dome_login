package com.llh.service;

import com.llh.domain.GiteeUser;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 16:15
 */
public interface GiteeUserService {
      GiteeUser getGiteeUserById(Integer giteeId);
      void addGiteeUser(GiteeUser user);
      void updateGiteeUser(GiteeUser userDB);
}
