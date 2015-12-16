package app.service.member;

import app.model.member.Member;

public interface MemberService {

	public void save(Member m);

	public Member findByLoginId(String loginId);

	public Member findByEmail(String email);

}
