package com.llh.mapper;

import com.llh.domain.GiteeUser;
import org.apache.ibatis.annotations.Param;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 16:15
 */
public interface GiteeUserMapper {
      GiteeUser getGiteeUserById(@Param("giteeId") Integer giteeId);
      void addGiteeUser(GiteeUser user);
      void updateGiteeUser(GiteeUser userDB);
}
