package dao;


import java.sql.SQLException;
import java.util.ArrayList;

import dto.LookDto;
import dto.MemberDto;
import oracle.sql.BLOB;

public class LookDao extends DAO {

	private LookDto dto;
	private ArrayList<LookDto> list;

	public LookDao() {
		super();
	}

	public ArrayList<LookDto> selectList() {
		list = new ArrayList<LookDto>();
		String sql = "select * from look";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				dto = new LookDto();
				dto.setL_code(rs.getString("l_code"));
				dto.setL_image(rs.getBlob("l_image"));
				dto.setG_num(rs.getInt("g_num"));
				dto.setM_id(rs.getString("m_id"));
				dto.setL_open(rs.getString("l_open"));

				list.add(dto);
				System.out.println(list);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		close();
		return list;
	}

	public LookDto select(String l_code) {
		dto = new LookDto();

		close();
		return dto;
	}

//	회원가입
	public int insert(String l_code, BLOB l_image, Integer g_num, String m_id, String l_open) {
		int n = 0;
		String sql = "insert into look(l_code, l_image, g_num, m_id, l_open)" + " values(?,?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getL_code());
			psmt.setBlob(2, dto.getL_image());
			psmt.setInt(3, dto.getG_num());
			psmt.setString(4, dto.getM_id());
			psmt.setString(5, dto.getL_open());

			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		close();
		return n;
	}

	public int update(MemberDto dto) {
		int n = 0;
		// 입력

		close();
		return n;
	}

	public int delete(String l_code) {
		int n = 0;
		// 삭제 조인해야 함
		String sql = "delete l_code from member where L_code= ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getL_code());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return n;
	}

	public String getCount(String m_id) {

		String sql = "SELECT count(l_code) FROM USER WHERE M_ID = ?";

		try {

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, m_id);

			rs = psmt.executeQuery();

			while (rs.next()) {

				return rs.getString(1); 

			}

		} catch (SQLException e) {

			e.printStackTrace();

		}

		return null; 

	}

}
