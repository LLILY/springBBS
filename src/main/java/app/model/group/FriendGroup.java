package app.model.group;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import app.model.member.Member;

@Entity
public class FriendGroup extends GenericGroup {

	@ManyToOne
	public Member owner;

	public static FriendGroup createGroup(String name, String logo, Member owner) {
		FriendGroup fGroup = new FriendGroup();
		fGroup.groupName = name;
		fGroup.logo = logo;
		fGroup.owner = owner;
		return fGroup;
	}

}
