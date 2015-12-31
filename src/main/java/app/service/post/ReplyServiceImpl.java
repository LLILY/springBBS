package app.service.post;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import app.dao.post.ReplyDao;
import app.model.post.ContentItem;
import app.model.post.Reply;

@Service("ReplyService")
public class ReplyServiceImpl implements ReplyService {
	@Resource
	private ReplyDao replyDao;

	@Override
	public void saveReply(Reply r) {
		// TODO Auto-generated method stub
		replyDao.saveReply(r);
	}

	@Override
	public void editReply(Reply r, String content) {
		// TODO Auto-generated method stub
		replyDao.editReply(r, content);
	}

	@Override
	public void deleteReply(Reply r) {
		// TODO Auto-generated method stub
		replyDao.deleteReply(r);

	}

	@Override
	public Reply findById(Long id) {
		// TODO Auto-generated method stub
		return replyDao.findById(id);
	}

	@Override
	public List<Reply> fetchByContentItem(ContentItem contentItem) {
		// TODO Auto-generated method stub
		return replyDao.fetchByContentItem(contentItem);
	}

}
