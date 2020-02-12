package dto;


public class LDetailDto {
	private String l_code;
	private Integer g_num;
	@Override
	public String toString() {
		return "LDetailDto [l_code=" + l_code + ", g_num=" + g_num + "]";
	}
	public String getL_code() {
		return l_code;
	}
	public void setL_code(String l_code) {
		this.l_code = l_code;
	}
	public Integer getG_num() {
		return g_num;
	}
	public void setG_num(Integer g_num) {
		this.g_num = g_num;
	}
	

}