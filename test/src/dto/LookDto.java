package dto;


/*import java.util.Arrays;

import java.sql.Blob;

import oracle.sql.BLOB;*/

public class LookDto {
	private String l_code;
	private String l_fileName;
	private String m_id;
	private String l_open;
	private String g_nums;
	/* private byte[] l_image; */
	//blob저장위해 필요
	/* private long size; */
	//blob꺼낼때 필요
	/* private String stringImage; */
	
	@Override
	public String toString() {
		return "LookDto [l_code=" + l_code /* + ", l_image=" + Arrays.toString(l_image) */ + ", l_fileName=" + l_fileName
				+ ", m_id=" + m_id + ", l_open=" + l_open + ", g_nums=" + g_nums /*+ ", size=" + size + ", stringImage="
				+ stringImage*/ + "]";
	}
	public String getL_code() {
		return l_code;
	}
	public void setL_code(String l_code) {
		this.l_code = l_code;
	}
	/*
	 * public byte[] getL_image() { return l_image; } public void setL_image(byte[]
	 * l_image) { this.l_image = l_image; }
	 */
	public String getG_nums() {
		return g_nums;
	}
	public String getL_fileName() {
		return l_fileName;
	}
	public void setL_fileName(String g_fileName) {
		this.l_fileName = g_fileName;
	}
	public void setG_nums(String g_nums) {
		this.g_nums = g_nums;
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
	/*
	 * public long getSize() { return size; } public void setSize(long size) {
	 * this.size = size; }
	 */
	/*
	 * public String getStringImage() { return stringImage; } public void
	 * setStringImage(String stringImage) { this.stringImage = stringImage; }
	 */
}