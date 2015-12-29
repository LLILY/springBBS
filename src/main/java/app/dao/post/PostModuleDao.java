package app.dao.post;

import app.model.post.PostModule;

public interface PostModuleDao {
	public void savePostModule(PostModule pm);

	public void editPostModule(PostModule pm, String name);

	public void delPostModule(PostModule pm);
}
