package app.service.post;

import java.util.List;

import app.model.member.Member;
import app.model.post.Post;
import app.model.post.Post.Category;

public interface PostService {
	public void savePost(Post p);

	public Post findById(Long id);

	public List<Post> fetchByCreatorAndCategory(Member member, Category category);

	public List<Post> fetchByCategory(Category category);

	public List<Post> fetchByConditions(String search);
}
