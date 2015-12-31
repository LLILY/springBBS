package app.service.post;

import java.util.List;

import app.model.post.Post;
import app.model.post.Reply;

public interface ReplyService {
	public void saveReply(Reply r);

	public void editReply(Reply r, String content);

	public void deleteReply(Reply r);

	public Reply findById(Long id);

	public List<Reply> fetchByPost(Post post);
}
