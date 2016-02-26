package app.model.post;

import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

import app.model.BaseModel;
import app.model.member.Member;

@Entity
public class ContentItem extends BaseModel {
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Member getCreator() {
		return creator;
	}

	public void setCreator(Member creator) {
		this.creator = creator;
	}

	@Lob
	public String content;
	@ManyToOne
	public Member creator;
}
