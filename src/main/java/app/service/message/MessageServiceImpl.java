package app.service.message;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import app.dao.message.MessageDao;
import app.model.member.Friend;
import app.model.member.Member;
import app.model.message.Message;

@Service
public class MessageServiceImpl implements MessageService {

	@Resource
	public MessageDao messageDao;

	@Override
	public void saveMessage(Message message) {
		messageDao.saveMessage(message);

	}

	@Override
	public List<Message> getMessages(Member sender, Member receiver, int page, int pageSize) {
		return messageDao.getMessages(sender, receiver, page, pageSize);
	}

	@Override
	public void addFriend(Friend friend) {
		messageDao.addFriend(friend);
	}

	@Override
	public List<Friend> getFriends(Member owner, int page, int pageSize) {
		return messageDao.getFriends(owner, page, pageSize);
	}

	@Override
	public Friend findFriend(Member owner, Member friend) {
		Friend myFriend = messageDao.findFriend(owner, friend);
		if (myFriend == null) {
			myFriend = Friend.addFriends(friend, owner);
			messageDao.addFriend(myFriend);
		}
		return myFriend;
	}

}
