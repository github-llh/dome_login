package com.llh.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 10:06
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class EasyUser {
      private Integer id;
      @NotBlank(message = "用户名不能为空")
      private String name;
      @NotBlank(message = "密码不能为空")
      private String pwd;
      private String salt;
      private Integer giteeId;
      private String nickName;
      private String avatarUrl;
}
