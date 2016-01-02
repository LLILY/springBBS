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

	@Override
	public Member findById(Long memberId) {
		// TODO Auto-generated method stub
		return memberDao.findById(memberId);
	}

	@Override
	public void editMemberInfo(Member m, String displayName,
			String profileName, String signature) {
		// TODO Auto-generated method stub
		memberDao.editMemberInfo(m, displayName, profileName, signature);
	}

	@Override
	public void editPassword(Member m, String password) {
		// TODO Auto-generated method stub
		memberDao.editPassword(m, password);
	}

}
