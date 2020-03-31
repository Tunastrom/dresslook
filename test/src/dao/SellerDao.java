/**
 * 
 */
package dao;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.SellerDto;

/**
 * @author User DAO 상속
 */
public class SellerDao extends DAO {
	private SellerDto dto;
	static SellerDao sellerDao = new SellerDao();

	public static SellerDao getInstance() {
		return sellerDao;
	}

	private final String SELLER_INSERT = "INSERT INTO SELLER(S_ID, S_PWD, S_CNAME, S_EMAIL, C_NUMBER, S_PHONE, S_ZIP, S_ADDR1, S_ADDR2, S_GRADE)"
			+ " VALUES(?,?,?,?,?,?,?,?,?,200)";

	public void sellerInsert(SellerDto dto) {
		try {
			psmt = conn.prepareStatement(SELLER_INSERT);
			psmt.setString(1, dto.getS_id());
			psmt.setString(2, dto.getS_pwd());
			psmt.setString(3, dto.getS_cname());
			psmt.setString(4, dto.getS_email());
			psmt.setString(5, dto.getC_number());
			psmt.setString(6, dto.getS_phone());
			psmt.setString(7, dto.getS_zip());
			psmt.setString(8, dto.getS_addr1());
			psmt.setString(9, dto.getS_addr2());
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

	public ArrayList<SellerDto> select() {
		ArrayList<SellerDto> list = new ArrayList<SellerDto>();

		String sql = "select s_id, s_pwd, s_cname, s_email, c_number, s_phone, s_zip, s_addr1, s_addr2, find_code(s_grade) as s_grade from seller";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				dto = new SellerDto();
				dto.setS_id(rs.getString("s_id"));
				dto.setS_pwd(rs.getString("s_pwd"));
				dto.setS_cname(rs.getString("s_cname"));
				dto.setS_email(rs.getString("s_email"));
				dto.setC_number(rs.getString("c_number"));
				dto.setS_phone(rs.getString("s_phone"));
				dto.setS_zip(rs.getString("s_zip"));
				dto.setS_addr1(rs.getString("s_addr1"));
				dto.setS_addr2(rs.getString("s_addr2"));
				dto.setS_grade(rs.getString("s_grade"));
				list.add(dto);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		close();
		return list;
	}

	// id중복체크
	public int sRegisterCheck(String sellerID) {
		String sql = "select s_id from seller where s_id = ?";
		int r = 1;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, sellerID);
			rs = psmt.executeQuery();
			if (rs.next())
				return r = 0;
			else
				return r = 1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return r;
	}

	public SellerDto sellerSelect(String sid) {
		dto = new SellerDto();

		String sql = "select * from seller where s_id=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, sid);
			rs = psmt.executeQuery();
			if (rs.next()) {
				dto = new SellerDto();
				dto.setS_pwd(rs.getString("s_pwd"));
				dto.setS_cname(rs.getString("s_cname"));
				dto.setS_email(rs.getString("s_email"));
				dto.setC_number(rs.getString("c_number"));
				dto.setS_phone(rs.getString("s_phone"));
				dto.setS_zip(rs.getString("s_zip"));
				dto.setS_addr1(rs.getString("s_addr1"));
				dto.setS_addr2(rs.getString("s_addr2"));
				dto.setS_grade(rs.getString("s_grade"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		close();

		return dto;

	}

	public void sellerUpdate(SellerDto dto) {

		try {

			String sql = "Update seller set s_cname=?, s_email=?, c_number=?, s_phone=?, s_zip=? "
					+ " , s_addr1=?, s_addr2=? where s_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getS_cname());
			psmt.setString(2, dto.getS_email());
			psmt.setString(3, dto.getC_number());
			psmt.setString(4, dto.getS_phone());
			psmt.setString(5, dto.getS_zip());
			psmt.setString(6, dto.getS_addr1());
			psmt.setString(7, dto.getS_addr2());
			psmt.setString(8, dto.getS_id());
			psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

}
