package app.model.member;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import app.model.BaseModel;

@Entity
public class Member extends BaseModel {

	public String username;
	public String password;

	public String email;
	public String displayName; //

	public String avatarUrl; // 头像路径 add
	public String profileName; // 个人主页 url
	public String phone; // 手机号码

	public String lastLoginIp; // 最后登录ip地址

	public Long loginCount = 0l; // 登录次数

	@Temporal(TemporalType.TIMESTAMP)
	public Date lastLoginTime = new Date();

	@Enumerated(EnumType.STRING)
	public Sex sex = Sex.NoPoint;

	public String weiboUrl;

	public String signature;// 个性签名

	public enum Sex {
		NoPoint {
			@Override
			public String getName() {
				return "";
			}
		},
		Female {
			@Override
			public String getName() {
				return "女";
			}
		},
		Male {

			@Override
			public String getName() {
				return "男";
			}

		};

		public abstract String getName();

		public static Sex convertToEnum(String sex) {
			if ("男".equals(sex)) {
				return Male;
			} else if ("女".equals(sex)) {
				return Female;
			} else {
				return NoPoint;
			}
		}
	}

	public String getDisPlayName() {
		return this.displayName;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}

	public String getAvatarUrl() {
		return avatarUrl;
	}

	public void setAvatarUrl(String avatarUrl) {
		this.avatarUrl = avatarUrl;
	}

	public String getProfileName() {
		return profileName;
	}

	public void setProfileName(String profileName) {
		this.profileName = profileName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getLastLoginIp() {
		return lastLoginIp;
	}

	public void setLastLoginIp(String lastLoginIp) {
		this.lastLoginIp = lastLoginIp;
	}

	public Long getLoginCount() {
		return loginCount;
	}

	public void setLoginCount(Long loginCount) {
		this.loginCount = loginCount;
	}

	public Date getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public Sex getSex() {
		return sex;
	}

	public void setSex(Sex sex) {
		this.sex = sex;
	}

	public String getWeiboUrl() {
		return weiboUrl;
	}

	public void setWeiboUrl(String weiboUrl) {
		this.weiboUrl = weiboUrl;
	}

	public void setDisPlayName(String displayName) {
		this.displayName = displayName;
	}

	public String getSignature() {
		return signature;
	}

	public void setSignature(String signature) {
		this.signature = signature;
	}

	public static Member create(String email, String username,
			String displayName, String password) {
		Member member = new Member();
		member.email = email;
		member.username = username;
		member.displayName = displayName;
		member.password = password;
		return member;
	}
}
