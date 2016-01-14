package app.model.post;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;

import app.model.member.Member;

/*
 * author:lily
 * 帖子
 */
@Entity
public class Post extends ContentItem {
	public String title;
	public Boolean isTop = false;// 是否置顶
	public String tag;// 帖子标签(用户自定义,以逗号隔开)
	@ManyToOne
	public PostType postType;// 帖子类别（用户自定义）
	@ManyToOne
	public PostModule postModule;// 帖子所属模块（系统定义）
	public Boolean isClosed = false;// 是否结贴
	@Enumerated(EnumType.STRING)
	public Category category;
	@Enumerated(EnumType.STRING)
	public Source source;
	public String originalUrl;// 非原创的原地址

	public Source getSource() {
		return source;
	}

	public void setSource(Source source) {
		this.source = source;
	}

	public String getOriginalUrl() {
		return originalUrl;
	}

	public void setOriginalUrl(String originalUrl) {
		this.originalUrl = originalUrl;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Boolean getIsTop() {
		return isTop;
	}

	public void setIsTop(Boolean isTop) {
		this.isTop = isTop;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public PostType getPostType() {
		return postType;
	}

	public void setPostType(PostType postType) {
		this.postType = postType;
	}

	public PostModule getPostModule() {
		return postModule;
	}

	public void setPostModule(PostModule postModule) {
		this.postModule = postModule;
	}

	public Boolean getIsClosed() {
		return isClosed;
	}

	public void setIsClosed(Boolean isClosed) {
		this.isClosed = isClosed;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public enum Category {
		帖子(1), 博客(2);
		private final int value;

		private Category(int value) {
			this.value = value;
		}

		public int getValue() {
			return value;
		}

		public static Category toCategory(int value) {
			for (final Category category : values()) {
				if (category.value == value) {
					return category;
				}
			}
			return null;
		}

	}

	public enum Source {
		原创(1), 转载(2), 翻译(3);
		private final int value;

		private Source(int value) {
			this.value = value;
		}

		public int getValue() {
			return value;
		}

		public static Source toSource(int value) {
			for (final Source source : values()) {
				if (source.value == value) {
					return source;
				}
			}
			return null;
		}
	}

	public static Post add(String title, String content, String tag,
			PostType postType, PostModule postModule, Category category,
			Source source, String originalUrl, Member creator) {
		Post post = new Post();
		post.title = title;
		post.content = content;
		post.tag = tag;
		post.postType = postType;
		post.postModule = postModule;
		post.category = category;
		post.source = source;
		post.originalUrl = originalUrl;
		post.creator = creator;
		return post;
	}

	public void edit(String title, String content, String tag,
			PostType postType, PostModule postModule, Category category,
			Source source, String originalUrl) {
		this.title = title;
		this.content = content;
		this.tag = tag;
		this.postType = postType;
		this.postModule = postModule;
		this.category = category;
		this.source = source;
		this.originalUrl = originalUrl;
	}

	public void setTop() {
		this.isTop = isTop ? false : true;
	}

	public void setClosed() {
		this.isClosed = isClosed ? false : true;
	}

}
