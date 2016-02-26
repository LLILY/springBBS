package app.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import app.model.member.Member;
import app.model.post.Post;
import app.model.post.Post.Category;
import app.service.member.MemberService;
import app.service.post.PostService;

@Controller
@RequestMapping("/user")
public class MemberController {

	@Resource
	public MemberService memberService;
	@Resource
	public PostService postService;

	@RequestMapping("/index")
	public String index() {
		return "front/index";
	}

	@RequestMapping("/home")
	public ModelAndView home(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Long memberId = (Long) session.getAttribute("memberId");
		Member member = memberService.findById(memberId);
		List<Post> postList = postService.fetchByCreatorAndCategory(member,
				Category.博客);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("postList", postList);
		return new ModelAndView("front/user/home", map);
	}

	@RequestMapping("/profile")
	public ModelAndView profile(Long memberId) {
		Member member = memberService.findById(memberId);
		return new ModelAndView("front/user/profile", "member", member);
	}

	@RequestMapping("/editMemberInfo")
	public ModelAndView editMemberInfo(Long memberId, String displayName,
			String profileName, String signature) {
		Member member = memberService.findById(memberId);
		memberService.editMemberInfo(member, displayName, profileName,
				signature);
		return new ModelAndView("front/user/profile", "member", member);
	}

	@RequestMapping("/adminLogin")
	public String adminLogin(String username, String password) {
		// Member member = memberService.findByLoginId(username);
		return "admin/hello";
	}

	@RequestMapping("/memberLogin")
	public ModelAndView memberLogin(String email, String password,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = memberService.findByEmail(email);
		Map<String, Object> map = new HashMap<String, Object>();
		if (member == null || !member.password.equals(password)) {
			map.put("email", email);
			map.put("password", password);
			map.put("errorMsg", "账号或密码错误");
			return new ModelAndView("login", map);
		}
		map.put("displayName", member.displayName);
		session.setAttribute("member", member);
		session.setAttribute("memberId", member.id);
		session.setAttribute("memberName", member.displayName);
		session.setAttribute("avatarUrl", member.avatarUrl);
		return new ModelAndView("front/index", map);
	}

	@RequestMapping("/loginPage")
	public ModelAndView loginPage() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("email", "");
		map.put("password", "");
		map.put("errorMsg", "");
		return new ModelAndView("login", map);
	}

	@RequestMapping("/registPage")
	public String registPage() {
		return "regist";
	}

	@RequestMapping("/regist")
	public ModelAndView registUser(String email, String username,
			String displayName, String password) {
		Member member = memberService.findByEmail(email);
		Map<String, Object> map = new HashMap<String, Object>();
		if (member == null) {
			member = Member.create(email, username, displayName, password);
			memberService.save(member);
			map.put("email", "");
			map.put("password", "");
			map.put("errorMsg", "");
			return new ModelAndView("login", map);
		} else {
			map.put("email", email);
			map.put("username", username);
			map.put("displayName", displayName);
			map.put("password", password);
			map.put("errorMsg", "邮箱已注册");
			return new ModelAndView("regist", map);
		}
	}

	@RequestMapping("/editMemberAvatar")
	@ResponseBody
	public String editMemberAvatar(Long memberId, String avatar) {
		Member member = memberService.findById(memberId);
		memberService.editAvatar(member, avatar);
		return "true";
	}

}
