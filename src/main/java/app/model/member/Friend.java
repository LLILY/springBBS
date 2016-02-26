package app.model.member;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import app.model.BaseModel;
import app.model.group.FriendGroup;

@Entity
public class Friend extends BaseModel {

	@ManyToOne
	public Member friend;

	@ManyToOne
	public Member owner;

	public String friendName;// 备注名

	@ManyToOne
	public FriendGroup group;

	public static Friend addFriends(Member friend, Member owner) {
		Friend myFriend = new Friend();
		myFriend.friend = friend;
		myFriend.owner = owner;
		return myFriend;
	}

	public Member getFriend() {
		return friend;
	}

	public void setFriend(Member firends) {
		this.friend = firends;
	}

	public Member getOwner() {
		return owner;
	}

	public void setOwner(Member owner) {
		this.owner = owner;
	}

	public String getFriendName() {
		return friendName;
	}

	public void setFriendName(String friendName) {
		this.friendName = friendName;
	}

	public FriendGroup getGroup() {
		return group;
	}

	public void setGroup(FriendGroup group) {
		this.group = group;
	}

}
