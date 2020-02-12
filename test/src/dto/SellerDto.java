package dto;


<<<<<<< HEAD
public class SellerDto {

	private String s_id;
	private String s_pwd;
	private String s_cname;
	private String s_email;
	private Integer c_number;
	private String phone;
	private Integer s_zip;
	private String s_addr1;
	private String s_addr2;
	private String s_grade;
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public String getS_pwd() {
		return s_pwd;
	}
	public void setS_pwd(String s_pwd) {
		this.s_pwd = s_pwd;
	}
	public String getS_cname() {
		return s_cname;
	}
	public void setS_cname(String s_cname) {
		this.s_cname = s_cname;
	}
	public String getS_email() {
		return s_email;
	}
	public void setS_email(String s_email) {
		this.s_email = s_email;
	}
	public Integer getC_number() {
		return c_number;
	}
	public void setC_number(Integer c_number) {
		this.c_number = c_number;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Integer getS_zip() {
		return s_zip;
	}
	public void setS_zip(Integer s_zip) {
		this.s_zip = s_zip;
	}
	public String getS_addr1() {
		return s_addr1;
	}
	public void setS_addr1(String s_addr1) {
		this.s_addr1 = s_addr1;
	}
	public String getS_addr2() {
		return s_addr2;
	}
	public void setS_addr2(String s_addr2) {
		this.s_addr2 = s_addr2;
	}
	public String getS_grade() {
		return s_grade;
	}
	public void setS_grade(String s_grade) {
		this.s_grade = s_grade;
	}
	@Override
	public String toString() {
		return "SellerDto [s_id=" + s_id + ", s_pwd=" + s_pwd + ", s_cname=" + s_cname + ", s_email=" + s_email
				+ ", c_number=" + c_number + ", phone=" + phone + ", s_zip=" + s_zip + ", s_addr1=" + s_addr1
				+ ", s_addr2=" + s_addr2 + ", s_grade=" + s_grade + "]";
	}

}
=======

public class SellerDto {
	private String id;
	private String pw;
	private String cname;
	private String email;
	private String cnum;
	private String sphone;
	private int szip;
	private String saddr1;
	private String saddr2;
	private String sgrade;
	
	
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
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCnum() {
		return cnum;
	}
	public void setCnum(String cnum) {
		this.cnum = cnum;
	}
	public String getSphone() {
		return sphone;
	}
	public void setSphone(String sphone) {
		this.sphone = sphone;
	}
	public int getSzip() {
		return szip;
	}
	public void setSzip(int szip) {
		this.szip = szip;
	}
	public String getSaddr1() {
		return saddr1;
	}
	public void setSaddr1(String saddr1) {
		this.saddr1 = saddr1;
	}
	public String getSaddr2() {
		return saddr2;
	}
	public void setSaddr2(String saddr2) {
		this.saddr2 = saddr2;
	}
	public String getSgrade() {
		return sgrade;
	}
	public void setSgrade(String sgrade) {
		this.sgrade = sgrade;
	}
	public SellerDto(String id, String pw, String cname, String email, String cnum, String sphone, int szip,
			String saddr1, String saddr2, String sgrade) {
		super();
		this.id = id;
		this.pw = pw;
		this.cname = cname;
		this.email = email;
		this.cnum = cnum;
		this.sphone = sphone;
		this.szip = szip;
		this.saddr1 = saddr1;
		this.saddr2 = saddr2;
		this.sgrade = sgrade;
	}
	
	
	
	
	
	
	
	

}
>>>>>>> branch 'master' of https://github.com/Tunastrom/dresslook.git
