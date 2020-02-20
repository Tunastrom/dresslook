package dto;

import java.util.Date;

public class MemberDto {

	private String m_id;	// ID
	private String m_pwd;	//패스워드
	private String m_name;	//이름
	private Date m_birth;	//생일
	private String m_email;	//이메일
	private String m_phone;	//전화번호
	private Integer m_zip;	//우편번호
	private String m_addr1;	//주소
	private String m_addr2;	//상세주소
	private String m_grade;	//등급
	private String m_au;	//권한
	private String m_status;	//계정상태
	private Date recent_connection;//접속일
	private Integer m_point;	//적립금
	private String m_sex;		//성별
	private String track;	//크롤링 배송추적

	
	public String getM_id() {
		return m_id;
	}


	public void setM_id(String m_id) {
		this.m_id = m_id;
	}


	public String getM_pwd() {
		return m_pwd;
	}


	public void setM_pwd(String m_pwd) {
		this.m_pwd = m_pwd;
	}


	public String getM_name() {
		return m_name;
	}


	public void setM_name(String m_name) {
		this.m_name = m_name;
	}


	public Date getM_birth() {
		return m_birth;
	}


	public void setM_birth(Date m_birth) {
		this.m_birth = m_birth;
	}


	public String getM_email() {
		return m_email;
	}


	public void setM_email(String m_email) {
		this.m_email = m_email;
	}


	public String getM_phone() {
		return m_phone;
	}


	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}


	public Integer getM_zip() {
		return m_zip;
	}


	public void setM_zip(Integer m_zip) {
		this.m_zip = m_zip;
	}


	public String getM_addr1() {
		return m_addr1;
	}


	public void setM_addr1(String m_addr1) {
		this.m_addr1 = m_addr1;
	}


	public String getM_addr2() {
		return m_addr2;
	}


	public void setM_addr2(String m_addr2) {
		this.m_addr2 = m_addr2;
	}


	public String getM_grade() {
		return m_grade;
	}


	public void setM_grade(String m_grade) {
		this.m_grade = m_grade;
	}


	public String getM_au() {
		return m_au;
	}


	public void setM_au(String m_au) {
		this.m_au = m_au;
	}


	public String getM_status() {
		return m_status;
	}


	public void setM_status(String m_status) {
		this.m_status = m_status;
	}


	public Date getRecent_connection() {
		return recent_connection;
	}


	public void setRecent_connection(Date recent_connection) {
		this.recent_connection = recent_connection;
	}


	public Integer getM_point() {
		return m_point;
	}


	public void setM_point(Integer m_point) {
		this.m_point = m_point;
	}


	public String getM_sex() {
		return m_sex;
	}


	public void setM_sex(String m_sex) {
		this.m_sex = m_sex;
	}


	public String getTrack() {
		return track;
	}


	public void setTrack(String track) {
		this.track = track;
	}


	@Override
	public String toString() {
		return "MemberDto [m_id=" + m_id + ", m_pwd=" + m_pwd + ", m_name=" + m_name + ", m_birth=" + m_birth
				+ ", m_email=" + m_email + ", m_phone=" + m_phone + ", m_zip=" + m_zip + ", m_addr1=" + m_addr1
				+ ", m_addr2=" + m_addr2 + ", m_grade=" + m_grade + ", m_au=" + m_au + ", m_status=" + m_status
				+ ", recent_connection=" + recent_connection + ", m_point=" + m_point + ", m_sex=" + m_sex + ", track="
				+ track + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberDto other = (MemberDto) obj;
		if (m_id == null) {
			if (other.m_id != null)
				return false;
		} else if (!m_id.equals(other.m_id))
			return false;
		if (m_point != other.m_point)
			return false;
		if (m_name == null) {
			if (other.m_name != null)
				return false;
		} else if (!m_name.equals(other.m_name))
			return false;
		if (m_pwd == null) {
			if (other.m_pwd != null)
				return false;
		} else if (!m_pwd.equals(other.m_pwd))
			return false;
		if (m_birth == null) {
			if (other.m_birth != null)
				return false;
		} else if (!m_birth.equals(other.m_birth))
			return false;
		if (m_birth == null) {
			if (other.m_birth != null)
				return false;
		} else if (!m_birth.equals(other.m_birth))
			return false;
		return true;
	}

}
