package dto;

/*import java.util.Arrays;*/

public class GoodsDto {
	//이미지 insert할때 사용
	private Integer g_num;
	private String g_name;
	private Integer g_price;
	private Integer s_price;
	private String g_size;
	private String color;
	private String g_inven;
	private String s_id;
	private String maker;
	/* private byte[] g_image; */
	private String g_fileName;
	private String g_info;
	private String g_code;
	private String g_sex;
	private String g_prior;
	private String g_status;

	private String gi_fileName;
	private String gi_imgType;
	/* private long size; */
	//blob이미지 select후 반환할 때 사용
	/* private String stringImage; */

	
	@Override
	public String toString() {
		return "GoodsDto [g_num=" + g_num + ", g_name=" + g_name + ", g_price=" + g_price + ", s_price=" + s_price
				+ ", g_size=" + g_size + ", color=" + color + ", g_inven=" + g_inven + ", s_id=" + s_id + ", maker="
				+ maker + ", g_fileName=" + g_fileName + ", g_info=" + g_info + ", g_code=" + g_code + ", g_sex="
				+ g_sex + ", g_prior=" + g_prior + ", g_status=" + g_status + ", gi_fileName=" + gi_fileName
				+ ", gi_imgType=" + gi_imgType + "]";
	}
	public Integer getG_num() {
		return g_num;
	}
	public void setG_num(Integer g_num) {
		this.g_num = g_num;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public Integer getG_price() {
		return g_price;
	}
	public void setG_price(Integer g_price) {
		this.g_price = g_price;
	}
	public Integer getS_price() {
		return s_price;
	}
	public void setS_price(Integer s_price) {
		this.s_price = s_price;
	}
	public String getG_size() {
		return g_size;
	}
	public void setG_size(String g_size) {
		this.g_size = g_size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getG_inven() {
		return g_inven;
	}
	public void setG_inven(String g_inven) {
		this.g_inven = g_inven;
	}
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	/*
	 * public byte[] getG_image() { return g_image; }
	 * 
	 * public void setG_image(byte[] g_image) { this.g_image = g_image; }
	 */
	public String getGi_fileName() {
		return gi_fileName;
	}
	public void setGi_fileName(String gi_fileName) {
		this.gi_fileName = gi_fileName;
	}
	public String getG_info() {
		return g_info;
	}
	public void setG_info(String g_info) {
		this.g_info = g_info;
	}
	public String getG_code() {
		return g_code;
	}
	public void setG_code(String g_code) {
		this.g_code = g_code;
	}
	public String getG_sex() {
		return g_sex;
	}
	public void setG_sex(String g_sex) {
		this.g_sex = g_sex;
	}
	public String getG_prior() {
		return g_prior;
	}
	public void setG_prior(String g_prior) {
		this.g_prior = g_prior;
	}
	public String getG_status() {
		return g_status;
	}
	public void setG_status(String g_status) {
		this.g_status = g_status;
	}
	/*
	 * public String getStringImage() { return stringImage; } public void
	 * setStringImage(String stringImage) { this.stringImage = stringImage; }
	 */
	public String getG_fileName() {
		return g_fileName;
	}
	public void setG_fileName(String g_fileName) {
		this.g_fileName = g_fileName;
	}
	public String getGi_imgType() {
		return gi_imgType;
	}
	public void setGi_imgType(String gi_imgType) {
		this.gi_imgType = gi_imgType;
	}
	
}