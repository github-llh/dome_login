package com.llh.domain;

import lombok.Data;

import javax.validation.constraints.NotBlank;

/**
 * User: lilinhan
 * DateTime: 2023/8/8 11:25
 */
@Data
public class Phone {
	@NotBlank(message = "手机号不能为空")
	private String phone;

	@NotBlank(message = "手机验证码不能为空")
	private String pwd;

	@NotBlank(message = "图片验证码不能为空")
	private String pic;
}
