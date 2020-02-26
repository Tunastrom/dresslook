package dao;


import java.sql.SQLException;
import java.util.ArrayList;


import dto.OrdDto;

public class OrdDao extends DAO {

	private OrdDto dto;

	public OrdDao() {
		super();
	}

	public ArrayList<OrdDto> select() {
		ArrayList<OrdDto> list = new ArrayList<OrdDto>();
		String sql = "select * from ORD";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				dto = new OrdDto();
				dto.setO_num(rs.getInt("o_num"));
				dto.setM_id(rs.getString("m_id"));
				dto.setS_mean(rs.getString("s_mean"));
				dto.setS_code(rs.getString("s_code"));
				dto.setO_price(rs.getInt("o_price"));
				dto.setCard_num(rs.getInt("card_num"));
				dto.setO_addressee(rs.getString("o_addressee"));
				dto.setO_zip(rs.getString("o_zip"));
				dto.setO_addr1(rs.getString("o_add1"));
				dto.setO_addr2(rs.getString("o_add2"));
				dto.setO_phone(rs.getString("o_phone"));
				dto.setPoint(rs.getInt("point"));
				dto.setO_date(rs.getDate("o_date"));
				dto.setO_code(rs.getString("o_code"));
				list.add(dto);
				System.out.println(list);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		close();
		return list;
	}

//	1명의 회원정보 가져오기

	public ArrayList<OrdDto> select(String id) {
		ArrayList<OrdDto> list = new ArrayList<OrdDto>();
		String sql = "select * from ord where m_id=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				dto = new OrdDto();
				dto.setO_num(rs.getInt("o_num"));
				dto.setS_mean(rs.getString("s_mean"));
				dto.setS_code(rs.getString("s_code"));
				dto.setO_price(rs.getInt("o_price"));
				dto.setCard_num(rs.getInt("card_num"));
				dto.setO_addressee(rs.getString("o_addressee"));
				dto.setO_zip(rs.getString("o_zip"));
				dto.setO_addr1(rs.getString("o_add1"));
				dto.setO_addr2(rs.getString("o_add2"));
				dto.setO_phone(rs.getString("o_phone"));
				dto.setPoint(rs.getInt("point"));
				dto.setO_date(rs.getDate("o_date"));
				dto.setO_code(rs.getString("o_code"));
				list.add(dto);
				System.out.println(list);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		close();

		return list;

	}

	public OrdDto select(int no) {
		dto = new OrdDto();

		String sql = "select * from member where o_num=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, no);
			rs = psmt.executeQuery();
			if (rs.next()) {
				dto = new OrdDto();
				dto.setM_id(rs.getString("m_id"));
				dto.setS_mean(rs.getString("s_mean"));
				dto.setS_code(rs.getString("s_code"));
				dto.setO_price(rs.getInt("o_price"));
				dto.setCard_num(rs.getInt("card_num"));
				dto.setO_addressee(rs.getString("o_addressee"));
				dto.setO_zip(rs.getString("o_zip"));
				dto.setO_addr1(rs.getString("o_add1"));
				dto.setO_addr2(rs.getString("o_add2"));
				dto.setO_phone(rs.getString("o_phone"));
				dto.setPoint(rs.getInt("point"));
				dto.setO_date(rs.getDate("o_date"));
				dto.setO_code(rs.getString("o_code"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		close();

		return dto;

	}

	public int insert() {
		int n = 0;
		String sql = "insert into member(o_num, m_id, s_mean, s_code, o_price, card_num, o_addressee, o_zip, o_addr1, o_addr2, o_phone, point, o_date, o-code)"
				+ " values(?,?,?,?,?,?,?,?,?,?,?,?,sysdate,?)";
		try {
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, dto.getO_num());
			psmt.setString(2, dto.getM_id());
			psmt.setString(3, dto.getS_mean());
			psmt.setString(4, dto.getS_code());
			psmt.setInt(5, dto.getO_price());
			psmt.setInt(6, dto.getCard_num());
			psmt.setString(7, dto.getO_addressee());
			psmt.setString(8, dto.getO_zip());
			psmt.setString(9, dto.getO_addr1());
			psmt.setString(10, dto.getO_addr2());
			psmt.setString(11, dto.getO_phone());
			psmt.setInt(12, dto.getPoint());
			psmt.setString(13, dto.getO_code());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		close();
		return n;
	}

	public void update(OrdDto dto) {

	}

	public void delete(OrdDto dto) {

		String sql = "delete from ord where o_num= ?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getO_num());
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close();
		}
	}
}
