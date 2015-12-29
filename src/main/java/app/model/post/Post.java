package app.model.post;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

/*
 * author:lily
 * 帖子
 */
@Entity
public class Post extends ContentItem {
	public String title;
	public Boolean isTop = false;// 是否置顶
	public String tag;// 帖子标签(用户自定义)
	@ManyToOne
	public PostType postType;// 帖子类别（用户自定义）
	@ManyToOne
	public PostModule postModule;// 帖子所属模块（系统定义）
	public Boolean isClosed = false;// 是否结贴

	public static Post add(String title, String content, String tag,
			PostType postType, PostModule postModule) {
		Post post = new Post();
		post.title = title;
		post.content = content;
		post.tag = tag;
		post.postType = postType;
		post.postModule = postModule;
		return post;
	}

	public void edit(String title, String content, String tag, PostType postType) {
		this.title = title;
		this.content = content;
		this.tag = tag;
		this.postType = postType;
	}

	public void setTop() {
		this.isTop = isTop ? false : true;
	}

	public void setClosed() {
		this.isClosed = isClosed ? false : true;
	}

}
