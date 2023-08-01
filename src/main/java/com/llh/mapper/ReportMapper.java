package com.llh.mapper;

import com.llh.domain.Bing;
import com.llh.domain.Zhu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * User: lilinhan
 * DateTime: 2023/8/1 20:48
 */
public interface ReportMapper {
      List<Zhu> getZhus(@Param("status") String status);
      List<Bing> getBings(@Param("status") String status);
}
