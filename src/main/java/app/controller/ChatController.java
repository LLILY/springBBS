package app.controller;

import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import app.enums.MessageType;
import app.model.member.Friend;
import app.model.member.Member;
import app.model.message.Message;
import app.model.vo.MessageVO;
import app.service.member.MemberService;
import app.service.message.MessageService;
import webSocekt.SocketUtil;

@Controller
@RequestMapping("/chat")
public class ChatController {

	@Resource
	public MemberService memberService;

	@Resource
	public MessageService messageService;

	@RequestMapping("/chat")
	public String chat() {
		return "chat/chat";
	}

	@RequestMapping("/singleChat/{personId}")
	public ModelAndView singleChat(@PathVariable long personId, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("chat/singleChat");
		Member member = memberService.findById(personId);
		HttpSession session = request.getSession();
		Long memberId = (Long) session.getAttribute("memberId");
		Member currentMember = memberService.findById(memberId);
		Friend friend = messageService.findFriend(currentMember, member);
		mv.addObject("myfriend", friend);
		mv.addObject("member", member);
		List<Friend> friends = messageService.getFriends(currentMember, 1, 10);
		mv.addObject("friends", friends);
		List<Message> messages = messageService.getMessages(currentMember, member, 1, 10);
		Collections.reverse(messages);
		mv.addObject("messageList", messages);
		return mv;
	}

	@ResponseBody
	@RequestMapping(value = "/sendMessage", produces = { "text/html;charset=UTF-8" })
	public String sendMessage(Long personId, String sendMsg, MessageType type, HttpServletRequest request) {
		Member receiver = memberService.findById(personId);
		HttpSession session = request.getSession();
		Long memberId = (Long) session.getAttribute("memberId");
		Member sender = memberService.findById(memberId);
		Message message = Message.createMessage(sendMsg, sender, receiver, type);
		messageService.saveMessage(message);
		String mess = MessageVO.generateString(message);
		if (SocketUtil.hasConnection(personId)) {
			SocketUtil.sendMessage(personId, mess);
		}

		return mess;
		// return new ModelAndView("chat/dialogue", "message", message);

	}

}
