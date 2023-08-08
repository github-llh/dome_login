package com.llh.controller;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.LineCaptcha;
import cn.hutool.captcha.generator.RandomGenerator;
import cn.hutool.core.util.RandomUtil;
import com.llh.domain.EasyUser;
import com.llh.domain.Phone;
import com.llh.mapper.EasyUserMapper;
import com.llh.utils.TokenUtils;
import com.llh.utils.ZzyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/**
 * User: lilinhan
 * DateTime: 2023/8/8 11:27
 */
@Controller
public class SMSController {
	@Autowired
	RedisTemplate redisTemplate;

	@Autowired
	EasyUserMapper easyUserMapper;

	@RequestMapping("/send.do")
	@ResponseBody
	public boolean send(String phone){
		// 获取4为随机数
		String code = RandomUtil.randomNumbers(4);
		// 发送短信
		boolean b = ZzyUtils.sendSms(phone, code, 5);
		// 将短信存到redis
		redisTemplate.opsForValue().set(phone,code,5, TimeUnit.MINUTES);
		return b;
	}

	@RequestMapping("/code.do")
	@ResponseBody
	public void code(HttpServletResponse response) throws IOException {
		// 自定义纯数字的验证码（随机4位数字，可重复）
		RandomGenerator randomGenerator = new RandomGenerator("0123456789", 4);
		LineCaptcha lineCaptcha = CaptchaUtil.createLineCaptcha(200, 100);
		lineCaptcha.setGenerator(randomGenerator);
		// 重新生成code
		lineCaptcha.createCode();

		// 获取验证码
		String code = lineCaptcha.getCode();
		System.out.println(code);

		redisTemplate.opsForValue().set("pic",code,5,TimeUnit.MINUTES);

		lineCaptcha.write(response.getOutputStream());
	}

	@RequestMapping("/phoneLogin.do")
	public String phoneLogin(@Valid Phone phone, BindingResult result, Model model,HttpServletResponse response){
		if(result.hasErrors()){
			String message = result.getAllErrors().get(0).getDefaultMessage();
			model.addAttribute("error",message);
			return "login_sms";
		}

		EasyUser userByName = easyUserMapper.getEasyUserByName(phone.getPhone());
		if(userByName==null){
			model.addAttribute("error","该手机号不存在");
			return "login_sms";
		}

		Object redisPhone = redisTemplate.opsForValue().get(phone.getPhone());
		if(!phone.getPwd().equals(redisPhone)){
			model.addAttribute("error","短信验证码错误");
			return "login_sms";
		}

		Object pic = redisTemplate.opsForValue().get("pic");
		if(!phone.getPic().equals(pic)){
			model.addAttribute("error","图片验证码错误");
			return "login_sms";
		}

		// 将查到的用户信息，加密制作令牌，存入cookie 并返回给浏览器
		TokenUtils.responseTokenByCookie(userByName,response);

		return "redirect:list.do";
	}
}
