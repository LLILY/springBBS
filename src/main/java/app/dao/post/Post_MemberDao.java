package app.dao.post;

import java.util.List;

import app.model.member.Member;
import app.model.post.Post;
import app.model.post.Post_Member;
import app.model.post.Post_Member.RelationType;

public interface Post_MemberDao {
	public void savePost_MemberDao(Post_Member pm);

	public void delPost_MemberDao(Post_Member pm);

	public Post_Member findByPostMemberAndType(Post post, Member member,
			RelationType type);

	public List<Post_Member> fetchByMemberAndType(Member member,
			RelationType type);

	public List<Post_Member> fetchByPostAndType(Post post, RelationType type);
}
