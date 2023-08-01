package com.llh.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 19:18
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Order {
      private Integer id;
      private String orderNum;
      private Integer uid;
      private Double price;
      private String payType;
      private Integer sid;
      private Integer status;
      private Integer cid;

      private String uname;
      private String sname;
      private String cname;
}
