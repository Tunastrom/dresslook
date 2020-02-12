package dto;


public class McodeDto {
 private String m_id;
 private String m_name;
 private String m_usage;
 private String l_id;
@Override
public String toString() {
	return "McodeDto [m_id=" + m_id + ", m_name=" + m_name + ", m_usage=" + m_usage + ", l_id=" + l_id + "]";
}
public String getM_id() {
	return m_id;
}
public void setM_id(String m_id) {
	this.m_id = m_id;
}
public String getM_name() {
	return m_name;
}
public void setM_name(String m_name) {
	this.m_name = m_name;
}
public String getM_usage() {
	return m_usage;
}
public void setM_usage(String m_usage) {
	this.m_usage = m_usage;
}
public String getL_id() {
	return l_id;
}
public void setL_id(String l_id) {
	this.l_id = l_id;
}
 

}