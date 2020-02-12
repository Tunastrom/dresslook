package dto;

import java.sql.Blob;
import java.util.Date;

import oracle.sql.BLOB;

public class MmemberDto {
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
	//여기까지 일반회원
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
	//요까지 판매자 정보
	private String g_num;
	private String g_name;
	private Integer g_price;
	private Integer s_price;
	private String g_size;
	private String color;
	private String g_inven;
	private String maker;
	private BLOB g_image;
	private String g_info;
	private String g_code;
	private String g_sex;
	private Integer g_prior;
	private String g_status;
	//요까지 상품 정보
	private String l_id;
	private String l_name;
	private String l_desc;
	//요까지대분류
	
	 
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
	public String getG_num() {
		return g_num;
	}
	public void setG_num(String g_num) {
		this.g_num = g_num;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public Integer getG_price() {
		return g_price;
	}
	public void setG_price(Integer g_price) {
		this.g_price = g_price;
	}
	public Integer getS_price() {
		return s_price;
	}
	public void setS_price(Integer s_price) {
		this.s_price = s_price;
	}
	public String getG_size() {
		return g_size;
	}
	public void setG_size(String g_size) {
		this.g_size = g_size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getG_inven() {
		return g_inven;
	}
	public void setG_inven(String g_inven) {
		this.g_inven = g_inven;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public BLOB getG_image() {
		return g_image;
	}
	public void setG_image(Blob blob) {
		this.g_image = (BLOB) blob;
	}
	public String getG_info() {
		return g_info;
	}
	public void setG_info(String g_info) {
		this.g_info = g_info;
	}
	public String getG_code() {
		return g_code;
	}
	public void setG_code(String g_code) {
		this.g_code = g_code;
	}
	public String getG_sex() {
		return g_sex;
	}
	public void setG_sex(String g_sex) {
		this.g_sex = g_sex;
	}
	public Integer getG_prior() {
		return g_prior;
	}
	public void setG_prior(Integer g_prior) {
		this.g_prior = g_prior;
	}
	public String getG_status() {
		return g_status;
	}
	public void setG_status(String g_status) {
		this.g_status = g_status;
	}
	@Override
	public String toString() {
		return "MmemberDto [m_id=" + m_id + ", m_pwd=" + m_pwd + ", m_name=" + m_name + ", m_birth=" + m_birth
				+ ", m_email=" + m_email + ", m_phone=" + m_phone + ", m_zip=" + m_zip + ", m_addr1=" + m_addr1
				+ ", m_addr2=" + m_addr2 + ", m_grade=" + m_grade + ", m_au=" + m_au + ", m_status=" + m_status
				+ ", recent_connection=" + recent_connection + ", m_point=" + m_point + ", m_sex=" + m_sex + ", s_id="
				+ s_id + ", s_pwd=" + s_pwd + ", s_cname=" + s_cname + ", s_email=" + s_email + ", c_number=" + c_number
				+ ", phone=" + phone + ", s_zip=" + s_zip + ", s_addr1=" + s_addr1 + ", s_addr2=" + s_addr2
				+ ", s_grade=" + s_grade + ", g_num=" + g_num + ", g_name=" + g_name + ", g_price=" + g_price
				+ ", s_price=" + s_price + ", g_size=" + g_size + ", color=" + color + ", g_inven=" + g_inven
				+ ", maker=" + maker + ", g_image=" + g_image + ", g_info=" + g_info + ", g_code=" + g_code + ", g_sex="
				+ g_sex + ", g_prior=" + g_prior + ", g_status=" + g_status + ", getM_id()=" + getM_id()
				+ ", getM_pwd()=" + getM_pwd() + ", getM_name()=" + getM_name() + ", getM_birth()=" + getM_birth()
				+ ", getM_email()=" + getM_email() + ", getM_phone()=" + getM_phone() + ", getM_zip()=" + getM_zip()
				+ ", getM_addr1()=" + getM_addr1() + ", getM_addr2()=" + getM_addr2() + ", getM_grade()=" + getM_grade()
				+ ", getM_au()=" + getM_au() + ", getM_status()=" + getM_status() + ", getRecent_connection()="
				+ getRecent_connection() + ", getM_point()=" + getM_point() + ", getM_sex()=" + getM_sex()
				+ ", getS_id()=" + getS_id() + ", getS_pwd()=" + getS_pwd() + ", getS_cname()=" + getS_cname()
				+ ", getS_email()=" + getS_email() + ", getC_number()=" + getC_number() + ", getPhone()=" + getPhone()
				+ ", getS_zip()=" + getS_zip() + ", getS_addr1()=" + getS_addr1() + ", getS_addr2()=" + getS_addr2()
				+ ", getS_grade()=" + getS_grade() + ", getG_num()=" + getG_num() + ", getG_name()=" + getG_name()
				+ ", getG_price()=" + getG_price() + ", getS_price()=" + getS_price() + ", getG_size()=" + getG_size()
				+ ", getColor()=" + getColor() + ", getG_inven()=" + getG_inven() + ", getMaker()=" + getMaker()
				+ ", getG_image()=" + getG_image() + ", getG_info()=" + getG_info() + ", getG_code()=" + getG_code()
				+ ", getG_sex()=" + getG_sex() + ", getG_prior()=" + getG_prior() + ", getG_status()=" + getG_status()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
	
	}

