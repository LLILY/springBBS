package app.dao.post;

import app.model.post.PostType;

public interface PostTypeDao {
	public void savePostType(PostType pm);

	public void editPostType(PostType pm, String name);

	public void delPostType(PostType pm);
}
