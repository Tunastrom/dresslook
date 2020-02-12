package dto;



public class OrdDetailDto {
	private Integer o_num;
	private Integer g_num;
	private Integer od_price;
	private Integer o_count;
	private Integer c_num;
	@Override
	public String toString() {
		return "OrdDetailDto [o_num=" + o_num + ", g_num=" + g_num + ", od_price=" + od_price + ", o_count=" + o_count
				+ ", c_num=" + c_num + "]";
	}
	public Integer getO_num() {
		return o_num;
	}
	public void setO_num(Integer o_num) {
		this.o_num = o_num;
	}
	public Integer getG_num() {
		return g_num;
	}
	public void setG_num(Integer g_num) {
		this.g_num = g_num;
	}
	public Integer getOd_price() {
		return od_price;
	}
	public void setOd_price(Integer od_price) {
		this.od_price = od_price;
	}
	public Integer getO_count() {
		return o_count;
	}
	public void setO_count(Integer o_count) {
		this.o_count = o_count;
	}
	public Integer getC_num() {
		return c_num;
	}
	public void setC_num(Integer c_num) {
		this.c_num = c_num;
	}
	

}