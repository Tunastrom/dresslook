package dto;

import java.util.Date;

public class SellerDto {

	private String s_id;
	private String s_pwd;
	private String s_cname;
	private Date s_join;
	private String s_email;
	private String c_number;
	private String phone;
	private String s_zip;
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

	public String getC_number() {
		return c_number;
	}

	public void setC_number(String c_number) {
		this.c_number = c_number;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getS_zip() {
		return s_zip;
	}

	public void setS_zip(String s_zip) {
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



	public Date getS_join() {
		return s_join;
	}

	public void setS_join(Date s_join) {
		this.s_join = s_join;
	}

}
