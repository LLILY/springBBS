package app.dao.member;

import app.model.member.Member;

public interface MemberDao {

	public void saveMember(Member m);

	public Member getMember(Long id);

	public void editPassword(Member m, String password);

	public Member findByEmail(String email);

	public Member findByUsername(String username);

}
