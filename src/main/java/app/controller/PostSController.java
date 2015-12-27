package app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/post")
public class PostSController {

	@RequestMapping("/create")
	public String create() {

		return "front/post/editPost";
	}

	@RequestMapping("/view")
	public String postView() {

		return "front/post/postView";
	}

}
