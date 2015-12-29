package app.dao;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import app.model.BaseModel;

@Repository("baseDao")
@SuppressWarnings("all")
public class BaseDaoImpl<T extends BaseModel> implements BaseDao<T> {

	public static final int PAGESIZE = 2;

	@Resource
	private Dao dao;

	@Override
	public <T extends BaseModel> T save(T o) {
		dao.saveOrUpdate(o);
		return o;
	}

	public <T extends BaseModel> T saveOrupdate(T o) {
		dao.saveOrUpdate(o);
		return o;
	}

	@Override
	public void delete(T o) {
		// dao.delete(o);
		o.isDeleted = true;// 删除采用物理删除
		dao.saveOrUpdate(o);

	}

	@Override
	public <T extends BaseModel> T update(T o) {
		dao.update(o);
		return o;
	}

	@Override
	public <T extends BaseModel> T find(Class<T> c, Serializable id) {
		return (T) dao.get(c, id);
	}

	@Override
	public <T extends BaseModel> T find(String hql, Object... param) {
		return (T) dao.get(hql, param);
	}

	@Override
	public <T extends BaseModel> T find(String hql, List<Object> param) {
		return (T) dao.get(hql, param);
	}

	@Override
	public <T extends BaseModel> List<T> fetch(String hql) {
		return dao.find(hql);
	}

	@Override
	public <T extends BaseModel> List<T> fetch(String hql, Object... param) {
		return dao.find(hql, param);
	}

	@Override
	public <T extends BaseModel> List<T> fetch(String hql, List<Object> param) {
		return dao.find(hql, param);
	}

	@Override
	public <T extends BaseModel> List<T> fetch(String hql, Object[] param,
			Integer page, Integer rows) {
		return dao.find(hql, param, page, rows);
	}

	@Override
	public <T extends BaseModel> List<T> fetch(String hql, List<Object> param,
			Integer page, Integer rows) {
		return dao.find(hql, param, page, rows);
	}

	@Override
	public Long count(String hql) {
		return dao.count(hql);
	}

	@Override
	public Long count(String hql, Object... param) {
		return dao.count(hql, param);
	}

	@Override
	public Long count(String hql, List<Object> param) {
		return dao.count(hql, param);
	}

	@Override
	public Integer executeHql(String hql) {
		return dao.executeHql(hql);
	}

	@Override
	public Integer executeHql(String hql, Object... param) {
		return dao.executeHql(hql, param);
	}

	@Override
	public Integer executeHql(String hql, List<Object> param) {
		return dao.executeHql(hql, param);
	}

}
