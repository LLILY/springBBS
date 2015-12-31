package app.dao.post;

import java.util.List;

import app.model.post.ContentItem;
import app.model.post.Reply;

public interface ReplyDao {
	public void saveReply(Reply r);

	public void editReply(Reply r, String content);

	public void deleteReply(Reply r);

	public Reply findById(Long id);

	public List<Reply> fetchByContentItem(ContentItem contentItem);

}
