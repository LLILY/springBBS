package app.model.post;

import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

import app.model.BaseModel;
import app.model.member.Member;

@Entity
public class ContentItem extends BaseModel {
	@Lob
	public String content;
	@ManyToOne
	public Member creator;
}
