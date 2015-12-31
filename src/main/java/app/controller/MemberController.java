package app.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.http.client.ClientProtocolException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import app.model.member.Member;
import app.service.member.MemberService;
import app.utils.PicUploadUtils;

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
	public String home() {
		return "front/user/home";
	}

	@RequestMapping("/profile")
	public String profile() {
		return "front/user/profile";
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
		// Member member = memberService.findByLoginId(username);
		return "regist";
	}

	@RequestMapping("/regist")
	public ModelAndView registUser(String email, String username,
			String displayName, String password) {
		Member member = memberService.findByUsername(username);
		if (member == null) {
			member = Member.create(email, username, displayName, password);
			memberService.save(member);
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("email", "");
		map.put("password", "");
		map.put("errorMsg", "");
		return new ModelAndView("login", map);
	}

	@RequestMapping("")
	public String uploadAvatar(File avatarImg) throws ClientProtocolException,
			IOException, Exception {
		System.err.println(avatarImg + "    avatarImg");
		String url = PicUploadUtils.postFile(avatarImg);
		return url;
	}

	@RequestMapping("/uploadAvatar")
	public String upload2(HttpServletRequest request,
			HttpServletResponse response) throws IllegalStateException,
			Exception {
		// 创建一个通用的多部分解析器
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());
		// 判断 request 是否有文件上传,即多部分请求
		if (multipartResolver.isMultipart(request)) {
			// 转换成多部分request
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
			// 取得request中的所有文件名
			Iterator<String> iter = multiRequest.getFileNames();
			while (iter.hasNext()) {
				// 记录上传过程起始时的时间，用来计算上传时间
				int pre = (int) System.currentTimeMillis();
				// 取得上传文件
				MultipartFile file = multiRequest.getFile(iter.next());
				if (file != null) {
					String myFileName = file.getOriginalFilename();
					// 如果名称不为“”,说明该文件存在，否则说明该文件不存在
					if (myFileName.trim() != "") {
						System.out.println(myFileName);
						// 重命名上传后的文件名
						String fileName = "demoUpload"
								+ file.getOriginalFilename();
						// 定义上传路径
						InputStream inputStream = file.getInputStream();
						File localFile = inputstreamtofile(inputStream);
						file.transferTo(localFile);

						String url = PicUploadUtils.postFile(localFile);
					}
				}
			}
			// 记录上传该文件后的时间
			int finaltime = (int) System.currentTimeMillis();
			System.out.println();
		}

		return "/success";
	}

	public static File inputstreamtofile(InputStream ins) throws Exception {
		File file = new File("/Users/lily/upload.png");
		OutputStream os = new FileOutputStream(file);
		int bytesRead = 0;
		byte[] buffer = new byte[8192];
		while ((bytesRead = ins.read(buffer, 0, 8192)) != -1) {
			os.write(buffer, 0, bytesRead);
		}

		os.close();
		ins.close();
		return file;
	}
}
