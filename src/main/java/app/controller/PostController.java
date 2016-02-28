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
import app.model.post.Post.Source;
import app.model.post.Reply;
import app.service.member.MemberService;
import app.service.post.PostService;
import app.service.post.ReplyService;
import app.vos.ReplyVO;

@Controller
@RequestMapping("/post")
public class PostController {
	@Resource
	public MemberService memberService;
	@Resource
	public PostService postService;
	@Resource
	public ReplyService replyService;

	@RequestMapping("/create")
	public String create() {
		return "front/post/editPost";
	}

	@RequestMapping("/edit")
	public ModelAndView edit(Long postId) {
		Post post = postService.findById(postId);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("post", post);
		return new ModelAndView("front/post/editPost", map);
	}

	@RequestMapping("/addPost")
	@ResponseBody
	public String addPost(String title, String content, String tag,
			Integer category, Integer source, String originalUrl,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		Long memberId = (Long) session.getAttribute("memberId");
		Member member = memberService.findById(memberId);
		Post post = Post.add(title, content, tag, null, null,
				Category.toCategory(category),
				Source.toSource(source == null ? 0 : source), originalUrl,
				member);
		postService.savePost(post);
		return "true";
	}

	@RequestMapping("/editPost")
	@ResponseBody
	public String editPost(Long postId, String title, String content,
			String tag, Integer category, Integer source, String originalUrl) {
		Post post = postService.findById(postId);
		post.edit(title, content, tag, null, null,
				Category.toCategory(category),
				Source.toSource(source == null ? 0 : source), originalUrl);
		postService.savePost(post);
		return "true";
	}

	@RequestMapping("/addReply")
	@ResponseBody
	public String addReply(String content, Long postId, Long replyId,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		Long memberId = (Long) session.getAttribute("memberId");
		Member member = memberService.findById(memberId);
		Post post = postService.findById(postId);
		Reply parentReply = null;
		if (replyId != null && replyId != 0) {
			parentReply = replyService.findById(replyId);
		}
		Reply reply = Reply.add(content, member, post, parentReply);
		replyService.saveReply(reply);
		return "true";
	}

	@RequestMapping("/view")
	public ModelAndView postView(Long postId) {
		Post post = postService.findById(postId);
		List<Reply> replyList = replyService.fetchByPost(post);
		List<ReplyVO> replyVOList = ReplyVO.genReplyVOList(replyList);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("post", post);
		map.put("replyVOList", replyVOList);
		return new ModelAndView("front/post/postView", map);
	}
}
