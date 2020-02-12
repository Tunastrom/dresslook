package dto;



public class NotificationDto {
	private Integer n_num;
	private String n_recept;
	private String contents;
	private String m_id;
	@Override
	public String toString() {
		return "NotificationDto [n_num=" + n_num + ", n_recept=" + n_recept + ", contents=" + contents + ", m_id="
				+ m_id + "]";
	}
	public Integer getN_num() {
		return n_num;
	}
	public void setN_num(Integer n_num) {
		this.n_num = n_num;
	}
	public String getN_recept() {
		return n_recept;
	}
	public void setN_recept(String n_recept) {
		this.n_recept = n_recept;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	

}