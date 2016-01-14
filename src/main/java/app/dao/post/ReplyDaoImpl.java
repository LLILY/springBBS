package app.dao.post;

import java.util.List;

import org.springframework.stereotype.Repository;

import app.dao.BaseDaoImpl;
import app.model.post.Post;
import app.model.post.Reply;

@Repository("ReplyDao")
@SuppressWarnings("all")
public class ReplyDaoImpl extends BaseDaoImpl implements ReplyDao {

	@Override
	public void saveReply(Reply r) {
		// TODO Auto-generated method stub
		save(r);
	}

	@Override
	public void editReply(Reply r, String content) {
		// TODO Auto-generated method stub
		r.content = content;
		save(r);

	}

	@Override
	public void deleteReply(Reply r) {
		// TODO Auto-generated method stub
		delete(r);

	}

	@Override
	public Reply findById(Long id) {
		// TODO Auto-generated method stub
		return (Reply) find(Reply.class, id);
	}

	@Override
	public List<Reply> fetchByPost(Post post) {
		// TODO Auto-generated method stub
		return (List<Reply>) fetch(
				"select r from Reply r where r.isDeleted = false and r.post = ?",
				post);
	}

}
