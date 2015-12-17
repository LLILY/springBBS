package app.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import app.service.member.MemberService;

@Controller
@RequestMapping("/user")
public class MemberController {

	@Resource
	public MemberService memberService;

	@RequestMapping("adminLogin")
	public String adminLogin(String username, String password) {
		// Member member = memberService.findByLoginId(username);
		System.err.println(username + "=======" + password + "===");
		return "admin/hello";
	}

	public static void memberLogin() {

	}

}
