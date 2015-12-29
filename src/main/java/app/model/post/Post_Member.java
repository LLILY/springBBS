package app.model.post;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;

import app.model.BaseModel;
import app.model.member.Member;

@Entity
public class Post_Member extends BaseModel {
	@ManyToOne
	public Post post;
	@ManyToOne
	public Member member;

	@Enumerated(EnumType.STRING)
	public RelationType type;

	public enum RelationType {
		收藏, 关注;
	}

	public static Post_Member add(Post post, Member member, RelationType type) {
		Post_Member pmr = new Post_Member();
		pmr.post = post;
		pmr.member = member;
		pmr.type = type;
		return pmr;
	}
}
