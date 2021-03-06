/**
 * 
 */
package dao;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.MemberDto;

public class MemberDao extends DAO {
	private MemberDto dto;

	public MemberDao() {
		super();
	}

//	전체회원 목록 가져오기
	public ArrayList<MemberDto> select() {
		ArrayList<MemberDto> list = new ArrayList<MemberDto>();
		String sql = "select m_id, m_pwd, m_name, m_birth, m_join, m_email, m_phone, m_zip, m_add1,"
				+ " m_add2, find_code(m_grade) as m_grade, find_code(m_au) as m_au,"
				+ " find_code(m_status) as m_status, m_recent, m_point, find_code(m_sex) as m_sex from member";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				dto = new MemberDto();
				dto.setM_id(rs.getString("m_id"));
				dto.setM_pwd(rs.getString("m_pwd"));
				dto.setM_name(rs.getString("m_name"));
				dto.setM_birth(rs.getDate("m_birth"));
				dto.setM_join(rs.getDate("m_join"));
				dto.setM_email(rs.getString("m_email"));
				dto.setM_phone(rs.getString("m_phone"));
				dto.setM_zip(rs.getString("m_zip"));
				dto.setM_add1(rs.getString("m_add1"));
				dto.setM_add2(rs.getString("m_add2"));
				dto.setM_grade(rs.getString("m_grade"));
				dto.setM_au(rs.getString("m_au"));
				dto.setM_status(rs.getString("m_status"));
				dto.setM_recent(rs.getDate("m_recent"));
				dto.setM_point(rs.getInt("m_point"));
				dto.setM_sex(rs.getString("m_sex"));
				list.add(dto);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		close();
		return list;
	}

//	1명의 회원정보 가져오기

	public MemberDto select(String id) {
		dto = new MemberDto();

		String sql = "select m_id, m_pwd, m_name, m_birth, m_join, m_email, m_phone, m_zip, m_add1,"
				+ " m_add2, find_code(m_grade) as m_grade, find_code(m_au) as m_au,"
				+ " find_code(m_status) as m_status, m_recent, m_point, find_code(m_sex) as m_sex from member where m_id=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				dto = new MemberDto();
				dto.setM_id(rs.getString("m_id"));
				dto.setM_pwd(rs.getString("m_pwd"));
				dto.setM_name(rs.getString("m_name"));
				dto.setM_birth(rs.getDate("m_birth"));
				dto.setM_email(rs.getString("m_email"));
				dto.setM_phone(rs.getString("m_phone"));
				dto.setM_zip(rs.getString("m_zip"));
				dto.setM_add1(rs.getString("m_add1"));
				dto.setM_add2(rs.getString("m_add2"));
				dto.setM_grade(rs.getString("m_grade"));
				dto.setM_au(rs.getString("m_au"));
				dto.setM_status(rs.getString("m_status"));
				dto.setM_recent(rs.getDate("m_recent"));
				dto.setM_point(rs.getInt("m_point"));
				dto.setM_sex(rs.getString("m_sex"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		close();

		return dto;

	}

//	회원가입
	public int insert(MemberDto dto) {
		int n = 0;
		String sql = "insert into member(m_id, m_name, m_pwd, m_birth, m_email, "
				+ " m_phone, m_zip, m_add1, m_add2, m_sex, m_join, m_au, m_grade, m_status, m_recent, m_point)"
				+ " values(?,?,?,?,?,?,?,?,?,?,sysdate,'210', '040', '060', sysdate, 0)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getM_id());
			psmt.setString(2, dto.getM_name());
			psmt.setString(3, dto.getM_pwd());
			psmt.setDate(4, (Date) dto.getM_birth());
			psmt.setString(5, dto.getM_email());
			psmt.setString(6, dto.getM_phone());
			psmt.setString(7, dto.getM_zip());
			psmt.setString(8, dto.getM_add1());
			psmt.setString(9, dto.getM_add2());
			psmt.setString(10, dto.getM_sex());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		close();
		return n;
	}

	public void update(MemberDto dto) {

		try {

			String sql = "Update member set m_name=?, m_email=?, m_phone=?, m_zip=? "
					+ " , m_add1=?, m_add2=?, m_birth=? where m_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getM_name());
			psmt.setString(2, dto.getM_email());
			psmt.setString(3, dto.getM_phone());
			psmt.setString(4, dto.getM_zip());
			psmt.setString(5, dto.getM_add1());
			psmt.setString(6, dto.getM_add2());
			psmt.setDate(7, (Date) dto.getM_birth());
			psmt.setString(8, dto.getM_id());
			psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

	public int track(MemberDto dto) {
		int n = 0;
		close();
		return n;
	}

//휴먼계정 변경- 삭제 아님
	public int delete(MemberDto dto) throws SQLException {
		String sql = "update member set m_status='062' where m_id= ?";
		int r = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getM_id());
			r = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			conn.commit();
			close();
		}
		return r;
	}

	public int delM(MemberDto dto) { // 회원삭제 del+Member
		String sql = "delete from member where m_id=?";
		int n = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getM_id());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return n;

	}

//	id중복체크
	public int registerCheck(String userID) {
		String sql = "select m_id from member where m_id = ?";
		int r = 1;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, userID);
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

//	로그인하는 메소드
	public String loginCheck(String id, String pw) {
		String grant = null;
		String sql = "select m_au from member where m_id = ? and m_pwd = ? ";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			rs = psmt.executeQuery();
			if (rs.next())
				grant = rs.getString("m_au");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return grant;// 로그인 성공시 권한을 넘겨준다.
	}

	public boolean duplicateIdCheck(String id) {

		boolean x = false;
		try {

			String sql = " select m_id from member where m_id =? ";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if (rs.next())
				x = true; // 해당 아이디 존재

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (psmt != null) {
					psmt.close();
					psmt = null;
				}
				if (conn != null) {
					conn.close();
					conn = null;
				}
			} catch (Exception e) {
				throw new RuntimeException(e.getMessage());
			}

		}
		return x;

	}

	public String getMEmail(String m_id) {
		String sql = "SELECT M_Email FROM USER WHERE M_ID = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, m_id);
			rs = psmt.executeQuery();
			while (rs.next()) {
				return rs.getString(1); // 이메일 주소 반환
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null; // 데이터베이스 오류
	}

	public static MemberDao getInstance() {
		// TODO Auto-generated method stub
		return null;
	}

	// 회원정보 수정
	public int updateM(MemberDto dto) {
		int n = 0;
		String sql = "update member set m_pwd=?, m_name=?" + " ,m_email=?,m_birth=?,m_phone=?,m_zip=?,m_add1=?,m_add2=?"
				+ " ,m_status=?,m_point=?,m_sex=?" + " where m_id=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getM_pwd());
			psmt.setString(2, dto.getM_name());
			psmt.setString(3, dto.getM_email());
			psmt.setDate(4, (Date) dto.getM_birth());
			psmt.setString(5, dto.getM_phone());
			psmt.setString(6, dto.getM_zip());
			psmt.setString(7, dto.getM_add1());
			psmt.setString(8, dto.getM_add2());
			psmt.setString(9, dto.getM_status());
			psmt.setInt(10, dto.getM_point());
			psmt.setString(11, dto.getM_sex());
			psmt.setString(12, dto.getM_id());

			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

		}
		return n;
	}

//회원 삭제
	public int delM(int num) {
		String sql = "delete from member where m_id=?";
		int delete = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getM_id());
			delete = psmt.executeUpdate();
			if (rs.next()) {
				dto.setM_id(rs.getString("m_id"));
				dto.setM_pwd(rs.getString("m_pwd"));
				dto.setM_name(rs.getString("m_name"));
				dto.setM_birth(rs.getDate("m_birth"));
				dto.setM_email(rs.getString("m_email"));
				dto.setM_phone(rs.getString("m_phone"));
				dto.setM_zip(rs.getString("m_zip"));
				dto.setM_add1(rs.getString("m_add1"));
				dto.setM_add2(rs.getString("m_add2"));
				dto.setM_grade(rs.getString("m_grade"));
				dto.setM_au(rs.getString("m_au"));
				dto.setM_status(rs.getString("m_status"));
				dto.setM_recent(rs.getDate("m_recent"));
				dto.setM_point(rs.getInt("m_point"));
				dto.setM_sex(rs.getString("m_sex"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return delete;
	}

	// 검색 기능 추가한 전체 회원목록 가져오기
	public ArrayList<MemberDto> list(String col, String word) {
		ArrayList<MemberDto> list = new ArrayList<MemberDto>();

		try {
			if (col.equals("none")) {
				String sql = "select m_id, m_pwd, m_name, m_birth, m_join, m_email, m_phone, m_zip, m_add1,"
						+ " m_add2, find_code(m_grade) as m_grade, find_code(m_au) as m_au,"
						+ " find_code(m_status) as m_status, m_recent, m_point, find_code(m_sex) as m_sex from member";
				psmt = conn.prepareStatement(sql);
			    

			} else if (col.equals("rname")) {
				String sql = "select m_id, m_pwd, m_name, m_birth, m_join, m_email, m_phone, m_zip, m_add1,"
						+ " m_add2, find_code(m_grade) as m_grade, find_code(m_au) as m_au,"
						+ " find_code(m_status) as m_status, m_recent, m_point, find_code(m_sex) as m_sex from member"
						+ " where  m_name like ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, "%" + word + "%");

			} else if (col.equals("title")) {
				String sql = "select m_id, m_pwd, m_name, m_birth, m_join, m_email, m_phone, m_zip, m_add1,"
						+ " m_add2, find_code(m_grade) as m_grade, find_code(m_au) as m_au,"
						+ " find_code(m_status) as m_status, m_recent, m_point, find_code(m_sex) as m_sex from member"
						+ " where  m_id like ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, "%" + word + "%");
			} else {
				String sql = "select m_id, m_pwd, m_name, m_birth, m_join, m_email, m_phone, m_zip, m_add1,"
						+ " m_add2, find_code(m_grade) as m_grade, find_code(m_au) as m_au,"
						+ " find_code(m_status) as m_status, m_recent, m_point, find_code(m_sex) as m_sex from member";

				psmt = conn.prepareStatement(sql);
			}

			rs = psmt.executeQuery();
			while (rs.next() == true) {
				dto = new MemberDto();
				dto.setM_id(rs.getString("m_id"));
				dto.setM_pwd(rs.getString("m_pwd"));
				dto.setM_name(rs.getString("m_name"));
				dto.setM_birth(rs.getDate("m_birth"));
				dto.setM_join(rs.getDate("m_join"));
				dto.setM_email(rs.getString("m_email"));
				dto.setM_phone(rs.getString("m_phone"));
				dto.setM_zip(rs.getString("m_zip"));
				dto.setM_add1(rs.getString("m_add1"));
				dto.setM_add2(rs.getString("m_add2"));
				dto.setM_grade(rs.getString("m_grade"));
				dto.setM_au(rs.getString("m_au"));
				dto.setM_status(rs.getString("m_status"));
				dto.setM_recent(rs.getDate("m_recent"));
				dto.setM_point(rs.getInt("m_point"));
				dto.setM_sex(rs.getString("m_sex"));

				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	public String checkNull(String a) {
		if (a == null) {
			return a = "";
		} else {
			return a;
		}

	}

}
