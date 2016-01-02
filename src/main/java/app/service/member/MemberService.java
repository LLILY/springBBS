package app.service.member;

import app.model.member.Member;

public interface MemberService {

	public void save(Member m);

	public void editMemberInfo(Member m, String displayName,
			String profileName, String signature);

	public void editPassword(Member m, String password);

	public Member findByUsername(String loginId);

	public Member findByEmail(String email);

	public Member findById(Long memberId);

}
