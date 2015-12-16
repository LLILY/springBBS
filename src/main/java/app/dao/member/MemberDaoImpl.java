package app.dao.member;

import java.util.List;

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
		return (Member) find("select ml from Member ml where ml.isDeleted = false and ml.email = ?", email);
	}

	@Override
	public Member findByLoginId(String username) {
		return (Member) find("select ml from Member ml where ml.isDeleted = false and ml.loginId = ?", username);
	}

	@Override
	public void editPassword(Member m, String password) {
		m.password = password;
		save(m);

	}

}
