package app.model.post;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import app.model.member.Member;

@Entity
public class Reply extends ContentItem {
	@ManyToOne
	public ContentItem contentItem;

	public static Reply add(String content, Member member,
			ContentItem contentItem) {
		Reply reply = new Reply();
		reply.content = content;
		reply.creator = member;
		reply.contentItem = contentItem;
		return reply;
	}
}
