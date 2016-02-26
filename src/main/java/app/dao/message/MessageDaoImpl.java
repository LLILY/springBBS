package app.dao.message;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import app.dao.BaseDaoImpl;
import app.model.BaseModel;
import app.model.member.Friend;
import app.model.member.Member;
import app.model.message.Message;

@Repository
public class MessageDaoImpl<T extends BaseModel> extends BaseDaoImpl<T>implements MessageDao {

	@Override
	public void saveMessage(Message mess) {
		save(mess);

	}

	@Override
	public void addFriend(Friend friend) {
		save(friend);
	}

	@Override
	public List<Message> getMessages(Member sender, Member receiver, Integer page, Integer pageSize) {
		List<Object> params = new ArrayList<>();
		params.add(sender);
		params.add(receiver);
		params.add(receiver);
		params.add(sender);
		return fetch(
				" select m from Message m where (m.sender = ? and m.receiver = ? )or (m.sender = ? or m.receiver = ? ) order by m.createTime desc",
				params, page, pageSize);
	}

	@Override
	public List<Friend> getFriends(Member owner, Integer page, Integer pageSize) {
		List<Object> params = new ArrayList<>();
		params.add(owner);
		return fetch(" select f from Friend f where f.owner = ?", params, page, pageSize);
	}

	@Override
	public Friend findFriend(Member owner, Member friend) {
		return find("select f from Friend f where f.owner = ? and f.friend = ?", owner, friend);
	}

}
