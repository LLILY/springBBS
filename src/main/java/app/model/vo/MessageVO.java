package app.model.vo;

import app.model.message.Message;

public class MessageVO extends ResultVO {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5487073838077556733L;
	public String sendMsg;

	public String createTime;

	public String senderImg;

	public String senderName;

	public long senderId;

	public long receiverId;

	public MessageVO() {

	}

	public MessageVO(Message message) {
		this.sendMsg = message.sendMsg;
		this.senderId = message.sender.id;
		this.senderImg = message.sender.avatarUrl;
		this.senderName = message.sender.displayName;
		this.createTime = message.createTime.toLocaleString();
		this.receiverId = message.receiver.id;
	}

	public static String generateString(Message message) {
		return toJsonString(new MessageVO(message));

	}

}
