package webSocekt;

import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.websocket.Session;

public class SocketUtil {
	public static Map<Long, Session> clients = new ConcurrentHashMap<>();

	public static void put(Long memberId, Session session) {
		clients.put(memberId, session);
	}

	public static Session get(Long memberId) {
		return clients.get(memberId);
	}

	public static void remove(Long memberId) {
		clients.remove(memberId);
	}

	/**
	 * 判断是否有连接
	 * 
	 * @param relationId
	 * @param userCode
	 * @return
	 */
	public static boolean hasConnection(Long personId) {
		return clients.containsKey(personId);
	}

	public static void sendMessage(Long memberId, String message) {
		if (hasConnection(memberId)) {
			Session session = clients.get(memberId);
			if (session != null) {
				try {
					session.getBasicRemote().sendText(message);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
