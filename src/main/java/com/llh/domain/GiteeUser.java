package com.llh.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 16:08
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class GiteeUser {
      private Integer id;
      private String name;
      private String pwd;
      private String salt;
      private Integer giteeId;
      private String nickName;
      private String avatarUrl;
}
