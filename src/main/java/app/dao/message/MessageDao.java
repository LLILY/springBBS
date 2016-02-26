package app.dao.message;

import java.util.List;

import app.model.member.Friend;
import app.model.member.Member;
import app.model.message.Message;

public interface MessageDao {

	public void saveMessage(Message mess);

	public List<Message> getMessages(Member sender, Member receiver, Integer page, Integer pageSize);

	public void addFriend(Friend friend);

	public Friend findFriend(Member owner, Member friend);

	public List<Friend> getFriends(Member owner, Integer page, Integer pageSize);

}
