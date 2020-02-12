package dto;

import java.util.Date;

public class CouponDetailsDto {
	private Integer c_num;
	private String m_id;
	private Date cd_usage;
	private String c_status;
	@Override
	public String toString() {
		return "CouponDetailsDto [c_num=" + c_num + ", m_id=" + m_id + ", cd_usage=" + cd_usage + ", c_status="
				+ c_status + "]";
	}
	public Integer getC_num() {
		return c_num;
	}
	public void setC_num(Integer c_num) {
		this.c_num = c_num;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public Date getCd_usage() {
		return cd_usage;
	}
	public void setCd_usage(Date cd_usage) {
		this.cd_usage = cd_usage;
	}
	public String getC_status() {
		return c_status;
	}
	public void setC_status(String c_status) {
		this.c_status = c_status;
	}

}