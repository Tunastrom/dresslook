package dto;

import java.sql.Date;

public class MemberDto {
<<<<<<< HEAD
	private String m_id;
	private String m_pwd;
	private String m_name;
	private Date m_birth;
	private String m_email;
	private String m_phone;
	private Integer m_zip;
	private String m_addr1;
	private String m_addr2;
	private String m_grade;
	private String m_au;
	private String m_status;
	private Date recent_connection;
	private Integer m_point;
	private String m_sex;
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
	@Override
	public String toString() {
		return "MmemberDto [m_id=" + m_id + ", m_pwd=" + m_pwd + ", m_name=" + m_name + ", m_birth=" + m_birth
				+ ", m_email=" + m_email + ", m_phone=" + m_phone + ", m_zip=" + m_zip + ", m_addr1=" + m_addr1
				+ ", m_addr2=" + m_addr2 + ", m_grade=" + m_grade + ", m_au=" + m_au + ", m_status=" + m_status
				+ ", recent_connection=" + recent_connection + ", m_point=" + m_point + ", m_sex=" + m_sex + "]";
	}
	
	

	}

=======
	private String id;
	private String pw;
	private String name;
	private Date bDate;
	private String email;
	private String phone;
	private int zip;
	private String addr1;
	private String addr2;
	private String grade;
	private String au;
	private String status;
	private Date cDate;
	private int point;
	private String sex;
	
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getbDate() {
		return bDate;
	}
	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getZip() {
		return zip;
	}
	public void setZip(int zip) {
		this.zip = zip;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getAu() {
		return au;
	}
	public void setAu(String au) {
		this.au = au;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getcDate() {
		return cDate;
	}
	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public MemberDto(String id, String pw, String name, Date bDate, String email, String phone, int zip,
			String addr1, String addr2, String grade, String au, String status, Date cDate, int point, String sex) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.bDate = bDate;
		this.email = email;
		this.phone = phone;
		this.zip = zip;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.grade = grade;
		this.au = au;
		this.status = status;
		this.cDate = cDate;
		this.point = point;
		this.sex = sex;
	}
	
	
	
	
	
	
	
	
	

}
>>>>>>> branch 'master' of https://github.com/Tunastrom/dresslook.git
