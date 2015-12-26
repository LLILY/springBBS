package app.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import app.service.member.MemberService;

@Controller
@RequestMapping("/user")
public class MemberController {

	@Resource
	public MemberService memberService;
	
	@RequestMapping("/index")
	public String index() {
		return "front/index";
	}
	
	@RequestMapping("/home")
	public String home(){
		return "front/user/home";
	}
	
	@RequestMapping("/profile")
	public String profile(){
		return "front/user/profile";
	}

	@RequestMapping("/adminLogin")
	public String adminLogin(String username, String password) {
		// Member member = memberService.findByLoginId(username);
		return "admin/hello";
	}

	public static void memberLogin() {

	}
	
	@RequestMapping("/loginPage")
	public String loginPage(){
		return "login";
	}
	
	@RequestMapping("/registPage")
	public String registPage() {
		// Member member = memberService.findByLoginId(username);
		return "regist";
	}

}
