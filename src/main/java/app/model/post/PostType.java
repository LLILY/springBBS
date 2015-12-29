package app.model.post;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import app.model.BaseModel;
import app.model.member.Member;

@Entity
public class PostType extends BaseModel {
	public String name;
	@ManyToOne
	public Member creator;

	public static PostType add(String name, Member creator) {
		PostType type = new PostType();
		type.name = name;
		type.creator = creator;
		return type;
	}

}
