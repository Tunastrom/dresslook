package dto;



public class SellerDto {
	private String id;
	private String pw;
	private String cname;
	private String email;
	private String cnum;
	private String sphone;
	private int szip;
	private String saddr1;
	private String saddr2;
	private String sgrade;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCnum() {
		return cnum;
	}
	public void setCnum(String cnum) {
		this.cnum = cnum;
	}
	public String getSphone() {
		return sphone;
	}
	public void setSphone(String sphone) {
		this.sphone = sphone;
	}
	public int getSzip() {
		return szip;
	}
	public void setSzip(int szip) {
		this.szip = szip;
	}
	public String getSaddr1() {
		return saddr1;
	}
	public void setSaddr1(String saddr1) {
		this.saddr1 = saddr1;
	}
	public String getSaddr2() {
		return saddr2;
	}
	public void setSaddr2(String saddr2) {
		this.saddr2 = saddr2;
	}
	public String getSgrade() {
		return sgrade;
	}
	public void setSgrade(String sgrade) {
		this.sgrade = sgrade;
	}
	public SellerDto(String id, String pw, String cname, String email, String cnum, String sphone, int szip,
			String saddr1, String saddr2, String sgrade) {
		super();
		this.id = id;
		this.pw = pw;
		this.cname = cname;
		this.email = email;
		this.cnum = cnum;
		this.sphone = sphone;
		this.szip = szip;
		this.saddr1 = saddr1;
		this.saddr2 = saddr2;
		this.sgrade = sgrade;
	}
	
	
	
	
	
	
	
	

}
