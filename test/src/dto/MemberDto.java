package dto;

import java.sql.Date;

public class MemberDto {
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
