package app.dao.post;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import app.dao.BaseDaoImpl;
import app.model.member.Member;
import app.model.post.Post;
import app.model.post.Post.Category;

@Repository("PostDao")
@SuppressWarnings("all")
public class PostDaoImpl extends BaseDaoImpl implements PostDao {

	@Override
	public void savePost(Post p) {
		// TODO Auto-generated method stub
		save(p);

	}

	@Override
	public Post findById(Long id) {
		// TODO Auto-generated method stub
		return (Post) find(Post.class, id);
	}

	@Override
	public List<Post> fetchByCreatorAndCategory(Member member, Category category) {
		// TODO Auto-generated method stub
		return (List<Post>) fetch(
				"select p from Post p where p.isDeleted = false and p.creator = ? and p.category=?",
				member, category);
	}

	@Override
	public List<Post> fetchByConditions(String search) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer(
				"select p from Post p where p.isDeleted = false");
		List<Object> params = new ArrayList();
		if (StringUtils.isNotBlank(search)) {
			hql.append(" and concat_ws(',',p.name,p.content,p.tag,p.postModule.name) like ?");
			params.add("%" + search + "%");
		}
		return (List<Post>) find(hql.toString(), params.toArray());
	}

}
