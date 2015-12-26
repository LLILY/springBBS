package app.service.member;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import app.dao.member.MemberDao;
import app.model.member.Member;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Resource
	private MemberDao memberDao;

	@Override
	public void save(Member member) {
		memberDao.saveMember(member);
	}

	@Override
	public Member findByEmail(String email) {

		return memberDao.findByEmail(email);
	}

	@Override
	public Member findByUsername(String username) {
		return memberDao.findByUsername(username);
	}

}
