package app.dao.post;

import java.util.List;

import app.model.member.Member;
import app.model.post.Post;

public interface PostDao {
	public void savePost(Post p);

	public Post findById(Long id);

	public List<Post> fetchByCreator(Member member);

	public List<Post> fetchByConditions(String search);
}
