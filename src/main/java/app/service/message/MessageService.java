package app.service.message;

import java.util.List;

import app.model.member.Friend;
import app.model.member.Member;
import app.model.message.Message;

public interface MessageService {

	public void saveMessage(Message message);

	public List<Message> getMessages(Member sender, Member receiver, int page, int pageSize);

	public void addFriend(Friend friend);

	public Friend findFriend(Member owner, Member friend);

	public List<Friend> getFriends(Member owner, int page, int pageSize);

}
