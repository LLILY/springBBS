package app.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import app.model.member.Member;
import app.service.member.MemberService;

@Controller
@RequestMapping("/user")
public class MemberController {

	@Resource
	public MemberService memberService;

	@RequestMapping("/adminLogin")
	public String adminLogin(String username, String password) {
		// Member member = memberService.findByLoginId(username);
		return "admin/hello";
	}

	@RequestMapping("/memberLogin")
	public String memberLogin(String email, String password) {
		Member member = memberService.findByEmail(email);
		if (member != null && member.password.equals(password)) {
			return "true";
		}
		return "false";
	}

	@RequestMapping("/loginPage")
	public String loginPage() {
		return "login";
	}

	@RequestMapping("/registPage")
	public String registPage() {
		// Member member = memberService.findByLoginId(username);
		return "regist";
	}

	@RequestMapping("/regist")
	public String registUser(String email, String username, String displayName,
			String password) {
		Member member = memberService.findByUsername(username);
		if (member == null) {
			member = Member.create(email, username, displayName, password);
			memberService.save(member);
		}
		return "login";
	}

}
