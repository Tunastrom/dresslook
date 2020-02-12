package dto;

import java.util.Date;

public class PunishmentDto {
	private Integer p_num;
	private Date p_end;
	private String p_reason;
	private String p_code;
	private String p_id;
	@Override
	public String toString() {
		return "PunishmentDto [p_num=" + p_num + ", p_end=" + p_end + ", p_reason=" + p_reason + ", p_code=" + p_code
				+ ", p_id=" + p_id + "]";
	}
	public Integer getP_num() {
		return p_num;
	}
	public void setP_num(Integer p_num) {
		this.p_num = p_num;
	}
	public Date getP_end() {
		return p_end;
	}
	public void setP_end(Date p_end) {
		this.p_end = p_end;
	}
	public String getP_reason() {
		return p_reason;
	}
	public void setP_reason(String p_reason) {
		this.p_reason = p_reason;
	}
	public String getP_code() {
		return p_code;
	}
	public void setP_code(String p_code) {
		this.p_code = p_code;
	}
	public String getP_id() {
		return p_id;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	
}