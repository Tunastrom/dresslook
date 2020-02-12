package dto;



public class RecommandDto {
	private Integer c_num;
	private String m_id;
	@Override
	public String toString() {
		return "RecommandDto [c_num=" + c_num + ", m_id=" + m_id + "]";
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
	

}