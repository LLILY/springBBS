package webSocekt;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.springframework.beans.factory.annotation.Autowired;

import com.google.gson.Gson;

import app.service.member.MemberService;

@ServerEndpoint("/chatSocket/{userId}")
public class ChatSocket {

	private static Map<Long, ChatSocket> socketMap = new HashMap<Long, ChatSocket>();

	@Resource
	public MemberService memberService;
	@Autowired
	HttpServletRequest request;
	private Session session;
	private Gson gson = new Gson();

	@OnOpen
	public void open(@PathParam("userId") Long userId, Session session) {
		this.session = session;
		socketMap.put(userId, this);
		SocketUtil.put(userId, session);
		// System.err.println("================" + userId);

	}

	@OnMessage
	public void receive(Session session, String msg) {

	}

	@OnClose
	public void close(@PathParam("userId") Long userId, Session session) {
		System.err.println("================" + userId);
		SocketUtil.remove(userId);
		// for (Map.Entry<Long, ChatSocket> entry : socketMap.entrySet()) {
		// if (entry.getValue().session == session) {
		// socketMap.remove(entry.getKey());
		//
		// }
		// }
	}

	public void broadcast(Long memberId, String message) {
		ChatSocket chat = socketMap.get(memberId);
		if (chat != null) {
			try {
				chat.session.getBasicRemote().sendText(message);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

}
