package dto;

import java.util.Date;

public class CodyDto {
	private Integer c_num;
	private String m_id;
	private String subject;
	private String contents;
	private Integer c_read;
	private String l_code;
	private String tag;
	private Date c_date;
	@Override
	public String toString() {
		return "CodyDto [c_num=" + c_num + ", m_id=" + m_id + ", subject=" + subject + ", contents=" + contents
				+ ", c_read=" + c_read + ", l_code=" + l_code + ", tag=" + tag + ", c_date=" + c_date + "]";
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
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Integer getC_read() {
		return c_read;
	}
	public void setC_read(Integer c_read) {
		this.c_read = c_read;
	}
	public String getL_code() {
		return l_code;
	}
	public void setL_code(String l_code) {
		this.l_code = l_code;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public Date getC_date() {
		return c_date;
	}
	public void setC_date(Date c_date) {
		this.c_date = c_date;
	}
	
}