/**
 * 
 */
package dao;

import java.sql.SQLException;

import dr.app.dto.MemberDto;

/**
 * @author User DAO 상속
 */
public class SellerDao extends DAO {

	static SellerDao sellerDao = new SellerDao();

	public static SellerDao getInstance() {
		return sellerDao;
	}

	private final String SELLER_INSERT = "INSERT INTO MEMBER(S_ID, S_PWD, C_NAME, S_EMAIL, S_PHONE, S_ZIP, S_ADDR1, S_ADDR2)" 
			+ " VALUES(?,?,?,?,?,?,?,?)";
	
	private final String SELLER_LOGIN = "SELECT * FROM MEMBER WHERE S_ID=? AND S_PWD=?";

	public void sellerInsert(MemberDto dto) {
		try {
			psmt = conn.prepareStatement(SELLER_INSERT);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			psmt.setDate(4, dto.getbDate());
			psmt.setString(5, dto.getEmail());
			psmt.setString(6, dto.getPhone());
			psmt.setInt(7, dto.getZip());
			psmt.setString(8, dto.getAddr1());
			psmt.setString(9, dto.getAddr2());
			psmt.setString(9, dto.getSex());
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
