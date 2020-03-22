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

	private final String SELLER_INSERT = "INSERT INTO MEMBER(S_ID, S_PWD, C_NAME, S_EMAIL, S_JOIN, S_PHONE, S_ZIP, S_ADDR1, S_ADDR2)" 
			+ " VALUES(?,?,?,?,sysdate,?,?,?,?)";
	
	private final String SELLER_LOGIN = "SELECT * FROM MEMBER WHERE S_ID=? AND S_PWD=?";

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

	public Boolean sloginCheck(String id, String pw) {// 로그인 메소드
		Boolean check=false;

		try {
			psmt = conn.prepareStatement(SELLER_LOGIN);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			rs = psmt.executeQuery();
			check=rs.next();
			

			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		close();

		return check;// 로그인 성공시 권한부여
	}

}
