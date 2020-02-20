package dto;

import java.util.Date;

public class OrdDto {
	private Integer o_num;
	private String m_id;
	private String s_mean;
	private String s_code;
	private Integer o_price;
	private Integer card_num;
	private String o_addressee;
	private Integer o_zip;
	private String o_addr1;
	private String o_addr2;
	private String o_phone;
	private Integer point;
	private Date o_date;
	private String o_code;
	@Override
	public String toString() {
		return "OrdDto [o_num=" + o_num + ", m_id=" + m_id + ", s_mean=" + s_mean + ", s_code=" + s_code + ", o_price="
				+ o_price + ", card_num=" + card_num + ", o_addressee=" + o_addressee + ", o_zip=" + o_zip
				+ ", o_addr1=" + o_addr1 + ", o_addr2=" + o_addr2 + ", o_phone=" + o_phone + ", point=" + point
				+ ", o_date=" + o_date + ", o_code=" + o_code + "]";
	}
	public Integer getO_num() {
		return o_num;
	}
	public void setO_num(Integer o_num) {
		this.o_num = o_num;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getS_mean() {
		return s_mean;
	}
	public void setS_mean(String s_mean) {
		this.s_mean = s_mean;
	}
	public String getS_code() {
		return s_code;
	}
	public void setS_code(String s_code) {
		this.s_code = s_code;
	}
	public Integer getO_price() {
		return o_price;
	}
	public void setO_price(Integer o_price) {
		this.o_price = o_price;
	}
	public Integer getCard_num() {
		return card_num;
	}
	public void setCard_num(Integer card_num) {
		this.card_num = card_num;
	}
	public String getO_addressee() {
		return o_addressee;
	}
	public void setO_addressee(String o_addressee) {
		this.o_addressee = o_addressee;
	}
	public Integer getO_zip() {
		return o_zip;
	}
	public void setO_zip(int i) {
		this.o_zip = i;
	}
	public String getO_addr1() {
		return o_addr1;
	}
	public void setO_addr1(String o_addr1) {
		this.o_addr1 = o_addr1;
	}
	public String getO_addr2() {
		return o_addr2;
	}
	public void setO_addr2(String o_addr2) {
		this.o_addr2 = o_addr2;
	}
	public String getO_phone() {
		return o_phone;
	}
	public void setO_phone(String o_phone) {
		this.o_phone = o_phone;
	}
	public Integer getPoint() {
		return point;
	}
	public void setPoint(Integer point) {
		this.point = point;
	}
	public Date getO_date() {
		return o_date;
	}
	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}
	public String getO_code() {
		return o_code;
	}
	public void setO_code(String o_code) {
		this.o_code = o_code;
	}
	

}