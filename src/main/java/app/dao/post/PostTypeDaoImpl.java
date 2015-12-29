package app.dao.post;

import org.springframework.stereotype.Repository;

import app.dao.BaseDaoImpl;
import app.model.post.PostType;

@Repository("PostTypeDao")
@SuppressWarnings("all")
public class PostTypeDaoImpl extends BaseDaoImpl implements PostTypeDao {

	@Override
	public void savePostType(PostType pt) {
		// TODO Auto-generated method stub
		save(pt);
	}

	@Override
	public void editPostType(PostType pt, String name) {
		// TODO Auto-generated method stub
		pt.name = name;
		save(pt);
	}

	@Override
	public void delPostType(PostType pt) {
		// TODO Auto-generated method stub
		pt.isDeleted = true;
		save(pt);
	}

}
