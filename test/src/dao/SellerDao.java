/**
 * 
 */
package dao;

import java.sql.SQLException;

import dto.SellerDto;



/**
 * @author User DAO 상속
 */
public class SellerDao extends DAO {

	static SellerDao sellerDao = new SellerDao();

	public static SellerDao getInstance() {
		return sellerDao;
	}

	private final String SELLER_INSERT = "INSERT INTO SELLER(S_ID, S_PWD, C_NAME, S_EMAIL, S_JOIN, S_PHONE, S_ZIP, S_ADDR1, S_ADDR2)" 
			+ " VALUES(?,?,?,?,sysdate,?,?,?,?)";
	
	

	public void sellerInsert(SellerDto dto) {
		try {
			psmt = conn.prepareStatement(SELLER_INSERT);
			psmt.setString(1, dto.getS_id());
			psmt.setString(2, dto.getS_pwd());
			psmt.setString(3, dto.getS_cname());
			psmt.setString(4, dto.getS_email());
			psmt.setString(5, dto.getPhone());
			psmt.setString(6, dto.getS_zip());
			psmt.setString(7, dto.getS_addr1());
			psmt.setString(8, dto.getS_addr2());
			psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
	public String sloginCheck(String s_id, String s_pwd) {
		String grant = null;
		String sql = "select s_grade from seller where s_id = ? and s_pwd = ? ";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, s_id);
			psmt.setString(2, s_pwd);
			rs = psmt.executeQuery();
			if (rs.next())
				grant = rs.getString("s_grade");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return grant;// 로그인 성공시 권한을 넘겨준다.
	}

}
