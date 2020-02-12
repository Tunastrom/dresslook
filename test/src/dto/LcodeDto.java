package dto;


public class LcodeDto {
	private String l_id;
	private String l_name;
	private String l_desc;
	@Override
	public String toString() {
		return "LcodeDto [l_id=" + l_id + ", l_name=" + l_name + ", l_desc=" + l_desc + "]";
	}
	public String getL_id() {
		return l_id;
	}
	public void setL_id(String l_id) {
		this.l_id = l_id;
	}
	public String getL_name() {
		return l_name;
	}
	public void setL_name(String l_name) {
		this.l_name = l_name;
	}
	public String getL_desc() {
		return l_desc;
	}
	public void setL_desc(String l_desc) {
		this.l_desc = l_desc;
	}
	

}