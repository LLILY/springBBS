package app.vos;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import app.model.member.Member;
import app.model.post.Post;
import app.model.post.Reply;

public class ReplyVO {
	public Long id;
	public Long parentReplyId;
	public String content;
	public Date createTime;
	public Member creator;
	public Post post;
	public List<ReplyVO> children = new ArrayList();

	public void addChildReply(ReplyVO replyVO) {
		children.add(replyVO);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getParentReplyId() {
		return parentReplyId;
	}

	public void setParentReplyId(Long parentReplyId) {
		this.parentReplyId = parentReplyId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Member getCreator() {
		return creator;
	}

	public void setCreator(Member creator) {
		this.creator = creator;
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	public List<ReplyVO> getChildren() {
		return children;
	}

	public void setChildren(List<ReplyVO> children) {
		this.children = children;
	}

	public ReplyVO(Reply reply) {
		id = reply.id;
		content = reply.content;
		createTime = reply.createTime;
		creator = reply.creator;
		parentReplyId = reply.parentReply != null ? reply.parentReply.id : 0l;
		post = reply.post;
	}

	public static List<ReplyVO> genReplyVOList(List<Reply> replyList) {
		List<ReplyVO> list = new ArrayList<>();
		List<Reply> replays = new ArrayList<>();
		List<Reply> childReplys = new ArrayList<>();
		for (Reply reply : replyList) {
			if (reply.parentReply == null) {
				replays.add(reply);
			} else {
				childReplys.add(reply);
			}
		}
		for (Reply reply : replays) {
			list.add(getReplyVO(reply, childReplys));
		}
		return list;
	}

	private static ReplyVO getReplyVO(Reply reply, List<Reply> replyList) {
		Map<Long, ReplyVO> treeMap = new HashMap<Long, ReplyVO>();
		ReplyVO replyVO = new ReplyVO(reply);
		for (Reply r : replyList) {
			treeMap.put(r.id, new ReplyVO(r));
		}
		for (ReplyVO childeplyVO : treeMap.values()) {
			long parentReplyId = childeplyVO.parentReplyId;
			if (parentReplyId == replyVO.id) {
				replyVO.addChildReply(childeplyVO);
			} else {
				if (treeMap.get(parentReplyId) != null) {
					treeMap.get(parentReplyId).addChildReply(childeplyVO);
				}
			}
		}
		replyVO.sort();
		return replyVO;
	}

	/**
	 * 各级节点排序
	 *
	 */
	public void sort() {
		if (children.size() != 0) {
			// 对本层节点进行排序
			Collections
					.sort(children,
							(o1, o2) -> ((ReplyVO) o2).createTime.getTime() > ((ReplyVO) o1).createTime
									.getTime() ? -1 : 1);
			// 对每个节点的下一层节点进行排序
			for (ReplyVO cReplyVO : children) {
				cReplyVO.sort();
			}
		}
	}
}
