package dto;

import java.util.Arrays;

public class GoodsImageDto {
	Integer g_num;
	byte[] gd_image;
	String img_type;
	
	long size;
	
	@Override
	public String toString() {
		return "GoodsImageDto [g_num=" + g_num + ", gd_image=" + Arrays.toString(gd_image) + ", img_type=" + img_type
				+ ", size=" + size + "]";
	}
	public Integer getG_num() {
		return g_num;
	}
	public void setG_num(Integer g_num) {
		this.g_num = g_num;
	}
	public byte[] getGd_image() {
		return gd_image;
	}
	public void setGd_image(byte[] gd_image) {
		this.gd_image = gd_image;
	}
	public String getImg_type() {
		return img_type;
	}
	public void setImg_type(String img_type) {
		this.img_type = img_type;
	}
	public long getSize() {
		return size;
	}
	public void setSize(long size) {
		this.size = size;
	} 
	
	
}
