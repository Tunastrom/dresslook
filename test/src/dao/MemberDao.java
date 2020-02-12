/**
 * 
 */
package dao;

import java.sql.SQLException;



/**
 * @author User DAO 상속
 */
public class MemberDao extends DAO {

	static MemberDao memberDao = new MemberDao();

	public static MemberDao getInstance() {
		return memberDao;
	}

	private final String MEMBER_INSERT = "INSERT INTO MEMBER(M_ID, M_PWD, M_NAME, M_BIRTH, M_EMAIL, M_PHONE, M_ZIP, M_ADDR1, M_ADDR2, M_GENDER)" 
			+" VALUES(?,?,?,?,?,?,?,?,?,?)";
	/*
	 * private final String MEMBER_UPDATE =
	 * "UPDATE MEMBER SET M_EMAIL=?, M_NAME=?,  M_PWD=?, M_PHONE =?, M_ZIP =?, M_ADDR1 =?, M_ADDR2 =?,  M_GRADE=?,  M_AU=? WHERE ID=?"
	 * ; private final String MEMBER_DELETE = "DELETE MEMBER WHERE M_ID=?"; private
	 * final String MEMBER_LIST = "SELECT * FROM MEMBER ORDER BY ID DESC"; private
	 * final String MEMBER_GET = "SELECT * FROM MEMBER WHERE M_ID=?"; private final
	 * String MEMBER_ID_SEARCH = "SELECT * FROM MEMBER WHERE M_ID=?"; private final
	 * String MEMBER_PWD_SEARCH = "SELECT * FROM MEMBER WHERE M_ID=?";
	 */
	private final String MEMBER_LOGIN = "SELECT M_AU FROM MEMBER WHERE M_ID=? AND M_PWD=?";

	public void memberInsert(MemberDto dto) {
		try {
			psmt = conn.prepareStatement(MEMBER_INSERT);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			psmt.setDate(4, dto.getbDate());
			psmt.setString(5, dto.getEmail());
			psmt.setString(6, dto.getPhone());
			psmt.setInt(7, dto.getZip());
			psmt.setString(8, dto.getAddr1());
			psmt.setString(9, dto.getAddr2());
			psmt.setString(10, dto.getSex());
			psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

	public String loginCheck(String id, String pw) {// 로그인 메소드
		String au = null;

		try {
			psmt = conn.prepareStatement(MEMBER_LOGIN);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			rs = psmt.executeQuery();

			if (rs.next())
				au = rs.getString("M_AU");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		close();

		return au;// 로그인 성공시 권한부여
	}

}
