package app.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import app.model.member.Member;
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

	@RequestMapping("/adminLogin")
	public String adminLogin(String username, String password) {
		// Member member = memberService.findByLoginId(username);
		return "admin/hello";
	}

	@RequestMapping("/memberLogin")
	public ModelAndView memberLogin(String email, String password)
			throws Exception {
		Member member = memberService.findByEmail(email);
		Map<String, Object> map = new HashMap<String, Object>();
		if (member == null || !member.password.equals(password)) {
			map.put("email", email);
			map.put("password", password);
			map.put("errorMsg", "账号或密码错误");
			return new ModelAndView("login", map);
		}
		map.put("displayName", member.displayName);
		return new ModelAndView("front/index", map);
	}

	@RequestMapping("/loginPage")
	public ModelAndView loginPage() throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("email", "");
		map.put("password", "");
		map.put("errorMsg", "");
		return new ModelAndView("login", map);
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
