package dto;

import java.util.Arrays;

import oracle.sql.BLOB;

public class LookDto {
	private String l_code;
	private byte[] l_image;
	private String g_num;
	private String m_id;
	private String l_open;
	private long size;

	@Override
	public String toString() {
		return "LookDto [l_code=" + l_code + ", l_image=" + Arrays.toString(l_image) + ", g_num=" + g_num + ", m_id="
				+ m_id + ", l_open=" + l_open + ", size=" + size + "]";
	}
	public String getL_code() {
		return l_code;
	}
	public void setL_code(String l_code) {
		this.l_code = l_code;
	}
	public byte[] getL_image() {
		return l_image;
	}
	public void setL_image(byte[] l_image) {
		this.l_image = l_image;
	}
	public String getG_num() {
		return g_num;
	}
	public void setG_num(String g_num) {
		this.g_num = g_num;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getL_open() {
		return l_open;
	}
	public void setL_open(String l_open) {
		this.l_open = l_open;
	}
	public long getSize() {
		return size;
	}
	public void setSize(long size) {
		this.size = size;
	}
}