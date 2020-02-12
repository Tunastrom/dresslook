package dto;

import java.util.Date;

public class NoticeDto {
	private Integer n_num;
	private String m_id;
	private String subject;
	private String contents;
	private Integer n_read;
	private Date n_date;
	@Override
	public String toString() {
		return "NoticeDto [n_num=" + n_num + ", m_id=" + m_id + ", subject=" + subject + ", contents=" + contents
				+ ", n_read=" + n_read + ", n_date=" + n_date + "]";
	}
	public Integer getN_num() {
		return n_num;
	}
	public void setN_num(Integer n_num) {
		this.n_num = n_num;
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
	public Integer getN_read() {
		return n_read;
	}
	public void setN_read(Integer n_read) {
		this.n_read = n_read;
	}
	public Date getN_date() {
		return n_date;
	}
	public void setN_date(Date n_date) {
		this.n_date = n_date;
	}
	
}