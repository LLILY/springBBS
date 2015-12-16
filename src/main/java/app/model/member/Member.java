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
	public String fullName; //

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

}
