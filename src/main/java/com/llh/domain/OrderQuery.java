package com.llh.domain;

import lombok.Data;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 19:42
 */
@Data
public class OrderQuery {
      private String num;
      private Integer sid;
      private Integer cid;
      private String orderNum;
      private String orderType;
}
