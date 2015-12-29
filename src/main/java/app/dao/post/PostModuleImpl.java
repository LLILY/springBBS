package app.dao.post;

import org.springframework.stereotype.Repository;

import app.dao.BaseDaoImpl;
import app.model.post.PostModule;

@Repository("PostModuleDao")
@SuppressWarnings("all")
public class PostModuleImpl extends BaseDaoImpl implements PostModuleDao {

	@Override
	public void savePostModule(PostModule pm) {
		// TODO Auto-generated method stub
		save(pm);
	}

	@Override
	public void editPostModule(PostModule pm, String name) {
		// TODO Auto-generated method stub
		pm.name = name;
		save(pm);

	}

	@Override
	public void delPostModule(PostModule pm) {
		// TODO Auto-generated method stub
		pm.isDeleted = true;
		save(pm);
	}

}
