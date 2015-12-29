package app.dao.post;

import java.util.List;

import org.springframework.stereotype.Repository;

import app.dao.BaseDaoImpl;
import app.model.member.Member;
import app.model.post.Post;
import app.model.post.Post_Member;
import app.model.post.Post_Member.RelationType;

@Repository("Post_MemberDao")
@SuppressWarnings("all")
public class Post_MemberDaoImpl extends BaseDaoImpl implements Post_MemberDao {

	@Override
	public void savePost_MemberDao(Post_Member pm) {
		// TODO Auto-generated method stub
		save(pm);
	}

	@Override
	public Post_Member findByPostMemberAndType(Post post, Member member,
			RelationType type) {
		// TODO Auto-generated method stub
		return (Post_Member) find(
				"select pm from Post_Member pm where pm.isDeleted = false and pm.post = ? and pm.member = ? and pm.type=?",
				member, type);
	}

	@Override
	public List<Post_Member> fetchByMemberAndType(Member member,
			RelationType type) {
		// TODO Auto-generated method stub
		return (List<Post_Member>) find(
				"select pm from Post_Member pm where pm.isDeleted = false and pm.member = ? and pm.type=?",
				member, type);
	}

	@Override
	public List<Post_Member> fetchByPostAndType(Post post, RelationType type) {
		// TODO Auto-generated method stub
		return (List<Post_Member>) find(
				"select pm from Post_Member pm where pm.isDeleted = false and pm.post = ? and pm.type=?",
				post, type);
	}

	@Override
	public void delPost_MemberDao(Post_Member pm) {
		// TODO Auto-generated method stub
		pm.isDeleted = true;
		save(pm);
	}

}
