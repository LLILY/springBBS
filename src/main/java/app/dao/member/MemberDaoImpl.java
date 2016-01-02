package app.dao.member;

import org.springframework.stereotype.Repository;

import app.dao.BaseDaoImpl;
import app.model.member.Member;

@Repository("memberDao")
@SuppressWarnings("all")
public class MemberDaoImpl extends BaseDaoImpl implements MemberDao {

	@Override
	public void saveMember(Member m) {
		save(m);
	}

	@Override
	public Member getMember(Long id) {
		return (Member) find(Member.class, id);
	}

	@Override
	public Member findByEmail(String email) {
		return (Member) find(
				"select ml from Member ml where ml.isDeleted = false and ml.email = ?",
				email);
	}

	@Override
	public Member findByUsername(String username) {
		return (Member) find(
				"select ml from Member ml where ml.isDeleted = false and ml.username = ?",
				username);
	}

	@Override
	public void editPassword(Member m, String password) {
		m.password = password;
		save(m);

	}

	@Override
	public Member findById(Long memberId) {
		// TODO Auto-generated method stub
		return (Member) find("select ml from Member ml where ml.id = ?",
				memberId);
	}

	@Override
	public void editMemberInfo(Member m, String displayName,
			String profileName, String signature) {
		// TODO Auto-generated method stub
		m.displayName = displayName;
		m.profileName = profileName;
		m.signature = signature;
		save(m);
	}

	@Override
	public void editAvatar(Member m, String avatar) {
		// TODO Auto-generated method stub
		m.avatarUrl = avatar;
		save(m);
	}

}
