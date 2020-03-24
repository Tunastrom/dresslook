package dto;

/*import java.util.Arrays;*/

public class GoodsImageDto {
	private Integer g_num;
	/* private byte[] gd_image; */
	private String gd_fileName;
	private String img_type;
	private long size;
	//base64 url 담음
	/* private String stringImage; */
	
	@Override
	public String toString() {
		return "GoodsImageDto [g_num=" + g_num /*+ ", gd_image="  + Arrays.toString(gd_image) */ + ", gd_fileName="
				+ gd_fileName + ", img_type=" + img_type + ", size=" + size /* + ", stringImage=" + stringImage */ + "]";
	}
	public Integer getG_num() {
		return g_num;
	}
	public void setG_num(Integer g_num) {
		this.g_num = g_num;
	}

	/*
	 * public byte[] getGd_image() { return gd_image; } public void
	 * setGd_image(byte[] gd_image) { this.gd_image = gd_image; }
	 */
	public String getGd_fileName() {
		return gd_fileName;
	}
	public void setGd_fileName(String gd_fileName) {
		this.gd_fileName = gd_fileName;
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
	/*
	 * public String getStringImage() { return stringImage; } public void
	 * setStringImage(String stringImage) { this.stringImage = stringImage; }
	 */
}
