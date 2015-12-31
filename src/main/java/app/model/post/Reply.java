package app.model.post;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import app.model.member.Member;

@Entity
public class Reply extends ContentItem {
	@ManyToOne
	public Post post;
	@ManyToOne
	public Reply parentReply;

	public static Reply add(String content, Member member, Post post,
			Reply parentReply) {
		Reply reply = new Reply();
		reply.content = content;
		reply.creator = member;
		reply.post = post;
		reply.parentReply = parentReply;
		return reply;
	}
}
