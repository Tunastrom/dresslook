package dto;

import java.util.Date;

public class PointDto {

	private String p_num;
	private Integer p_acc;
	private Integer p_deduct;
	private Date p_date;
	@Override
	public String toString() {
		return "PointDto [p_num=" + p_num + ", p_acc=" + p_acc + ", p_deduct=" + p_deduct + ", p_date=" + p_date + "]";
	}
	public String getP_num() {
		return p_num;
	}
	public void setP_num(String p_num) {
		this.p_num = p_num;
	}
	public Integer getP_acc() {
		return p_acc;
	}
	public void setP_acc(Integer p_acc) {
		this.p_acc = p_acc;
	}
	public Integer getP_deduct() {
		return p_deduct;
	}
	public void setP_deduct(Integer p_deduct) {
		this.p_deduct = p_deduct;
	}
	public Date getP_date() {
		return p_date;
	}
	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}
	
}