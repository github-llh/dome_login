package com.llh.domain;

import lombok.Data;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 10:06
 */
@Data
public class EasyUser {
      private Integer id;
      private String name;
      private String pwd;
      private String salt;
}
