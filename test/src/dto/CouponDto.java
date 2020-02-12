package dto;

import java.util.Date;

public class CouponDto {
	private Integer c_num;
	private String c_name;
	private String c_list;
	private String c_limit;
	private Integer c_price;
	private Date c_usage;
	@Override
	public String toString() {
		return "CouponDto [c_num=" + c_num + ", c_name=" + c_name + ", c_list=" + c_list + ", c_limit=" + c_limit
				+ ", c_price=" + c_price + ", c_usage=" + c_usage + "]";
	}
	public Integer getC_num() {
		return c_num;
	}
	public void setC_num(Integer c_num) {
		this.c_num = c_num;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_list() {
		return c_list;
	}
	public void setC_list(String c_list) {
		this.c_list = c_list;
	}
	public String getC_limit() {
		return c_limit;
	}
	public void setC_limit(String c_limit) {
		this.c_limit = c_limit;
	}
	public Integer getC_price() {
		return c_price;
	}
	public void setC_price(Integer c_price) {
		this.c_price = c_price;
	}
	public Date getC_usage() {
		return c_usage;
	}
	public void setC_usage(Date c_usage) {
		this.c_usage = c_usage;
	}
	

}