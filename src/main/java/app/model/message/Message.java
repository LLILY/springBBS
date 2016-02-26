package app.model.message;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;

import app.enums.MessageType;
import app.model.BaseModel;
import app.model.member.Member;

@Entity
public class Message extends BaseModel {

	@Column(length = 2000)
	public String sendMsg;

	@ManyToOne
	public Member sender;
	@ManyToOne
	public Member receiver;

	@Enumerated(EnumType.STRING)
	public MessageType type;

	public static Message createMessage(String sendMsg, Member sender, Member receiver, MessageType type) {
		Message message = new Message();
		message.sender = sender;
		message.receiver = receiver;
		message.sendMsg = sendMsg;
		message.type = type != null ? type : MessageType.Text;
		return message;
	}

	public String getSendMsg() {
		return sendMsg;
	}

	public void setSendMsg(String sendMsg) {
		this.sendMsg = sendMsg;
	}

	public Member getSender() {
		return sender;
	}

	public void setSender(Member sender) {
		this.sender = sender;
	}

	public Member getReceiver() {
		return receiver;
	}

	public void setReceiver(Member receiver) {
		this.receiver = receiver;
	}
}
