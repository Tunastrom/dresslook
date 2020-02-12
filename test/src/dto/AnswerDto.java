package dto;


public class AnswerDto {
	private Integer a_num;
	private Integer c_num;
	private String m_id;
	private String contents;
	@Override
	public String toString() {
		return "AnswerDto [a_num=" + a_num + ", c_num=" + c_num + ", m_id=" + m_id + ", contents=" + contents + "]";
	}
	public Integer getA_num() {
		return a_num;
	}
	public void setA_num(Integer a_num) {
		this.a_num = a_num;
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
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	

}