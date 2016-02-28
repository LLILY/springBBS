package app.service.post;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import app.dao.post.PostDao;
import app.model.member.Member;
import app.model.post.Post;
import app.model.post.Post.Category;

@Service("PostService")
public class PostServiceImpl implements PostService {
	@Resource
	private PostDao postDao;

	@Override
	public void savePost(Post p) {
		// TODO Auto-generated method stub
		postDao.savePost(p);

	}

	@Override
	public Post findById(Long id) {
		// TODO Auto-generated method stub
		return postDao.findById(id);
	}

	@Override
	public List<Post> fetchByCreatorAndCategory(Member member, Category category) {
		// TODO Auto-generated method stub
		return postDao.fetchByCreatorAndCategory(member, category);
	}

	@Override
	public List<Post> fetchByConditions(String search) {
		// TODO Auto-generated method stub
		return postDao.fetchByConditions(search);
	}

	@Override
	public List<Post> fetchByCategory(Category category) {
		// TODO Auto-generated method stub
		return postDao.fetchByCategory(category);
	}
}
