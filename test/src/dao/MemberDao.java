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
	private ArrayList<MemberDto> list;

	public MemberDao() {
		super();
	}

//	전체회원 목록 가져오기
	public ArrayList<MemberDto> select() {
		ArrayList<MemberDto> list = new ArrayList<MemberDto>();
		String sql = "select * from member";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				dto = new MemberDto();
				dto.setM_id(rs.getString("m_id"));
				dto.setM_pwd(rs.getString("m_pwd"));
				dto.setM_name(rs.getString("m_name"));
				dto.setM_birth(rs.getDate("m_birth"));
				dto.setM_email(rs.getString("m_email"));
				dto.setM_phone(rs.getString("m_phone"));
				dto.setM_zip(rs.getInt("m_zip"));
				dto.setM_addr1(rs.getString("m_add1"));
				dto.setM_addr2(rs.getString("m_add2"));
				dto.setM_grade(rs.getString("m_grade"));
				dto.setM_au(rs.getString("m_au"));
				dto.setM_status(rs.getString("m_status"));
				dto.setRecent_connection(rs.getDate("m_recent"));
				dto.setM_point(rs.getInt("m_point"));
				dto.setM_sex(rs.getString("m_sex"));
				list.add(dto);
				System.out.println(list);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		close();
		return list;
	}

	public MemberDto select(String id) {
		String sql = "select * from member wher m_id=?";
		MemberDto dto = new MemberDto();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			 rs = psmt.executeQuery();
			 if(rs.next()) {
					dto.setM_id(rs.getString("m_id"));
					dto.setM_pwd(rs.getString("m_pwd"));
					dto.setM_name(rs.getString("m_name"));
					dto.setM_birth(rs.getDate("m_birth"));
					dto.setM_email(rs.getString("m_email"));
					dto.setM_phone(rs.getString("m_phone"));
					dto.setM_zip(rs.getInt("m_zip"));
					dto.setM_addr1(rs.getString("m_add1"));
					dto.setM_addr2(rs.getString("m_add2"));
					dto.setM_grade(rs.getString("m_grade"));
					dto.setM_au(rs.getString("m_au"));
					dto.setM_status(rs.getString("m_status"));
					dto.setRecent_connection(rs.getDate("m_recent"));
					dto.setM_point(rs.getInt("m_point"));
					dto.setM_sex(rs.getString("m_sex"));
				 
			 } 
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return (MemberDto) rs;
	}

	
//	회원가입
	public int insert(String userID, String name, String userPassword1, String birth, String email, String pnum,
			Integer zip, String addr1, String addr2, String gender) {
		int n = 0;
		String sql = "insert into member(m_id, m_name, m_pwd, m_birth, m_email, m_phone, m_zip, m_addr1, m_addr2, m_sex, m_recent, m_grade)"
				+ " values(?,?,?,?,?,?,?,?,?,?,sysdate,'210')";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getM_id());
			psmt.setString(2, dto.getM_name());
			psmt.setString(3, dto.getM_pwd());
			psmt.setDate(4, (Date) dto.getM_birth());
			psmt.setString(5, dto.getM_email());
			psmt.setString(6, dto.getM_phone());
			psmt.setInt(7, dto.getM_zip());
			psmt.setString(8, dto.getM_addr1());
			psmt.setString(9, dto.getM_addr2());
			psmt.setString(10, dto.getM_sex());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		close();
		return n;
	}

	public int update(MemberDto dto) {
		int r = 0;
		try {

			String sql = "Update member set m_pwd=?, m_name=?, m_email=?, m_phone=?, m_zip=? "+
			" , m_addr1=?, m_addr2=?, m_birth=? where m_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(9, dto.getM_id());
			psmt.setString(2, dto.getM_name());
			psmt.setString(1, dto.getM_pwd());
			psmt.setDate(8, (Date) dto.getM_birth());
			psmt.setString(3, dto.getM_email());
			psmt.setString(4, dto.getM_phone());
			psmt.setInt(5, dto.getM_zip());
			psmt.setString(6, dto.getM_addr1());
			psmt.setString(7, dto.getM_addr2());
			r = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return r;
	}
	
	public int track(MemberDto dto) {
		int n=0;
		close();
		return n;
	}
	
//휴먼계정 변경- 삭제 아님
	public int delete(MemberDto dto) throws SQLException {
		// 삭제 조인해야 함
		String sql = "update member set m_status='062' where m_id= ?";
		int r = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getM_id());
			 r = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			conn.commit();
			close();
		}
		return r;
	}
	public int delM(MemberDto dto) throws SQLException{ //회원삭제 del+Member
		String sql = "delete from member where m_id=?";
		int n = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getM_id());
			 n = psmt.executeUpdate();
			 if(rs.next()) {
					dto.setM_id(rs.getString("m_id"));
					dto.setM_pwd(rs.getString("m_pwd"));
					dto.setM_name(rs.getString("m_name"));
					dto.setM_birth(rs.getDate("m_birth"));
					dto.setM_email(rs.getString("m_email"));
					dto.setM_phone(rs.getString("m_phone"));
					dto.setM_zip(rs.getInt("m_zip"));
					dto.setM_addr1(rs.getString("m_add1"));
					dto.setM_addr2(rs.getString("m_add2"));
					dto.setM_grade(rs.getString("m_grade"));
					dto.setM_au(rs.getString("m_au"));
					dto.setM_status(rs.getString("m_status"));
					dto.setRecent_connection(rs.getDate("m_recent"));
					dto.setM_point(rs.getInt("m_point"));
					dto.setM_sex(rs.getString("m_sex"));
				 
			 } 
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
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
			if (rs.next() || userID.equals(""))
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
		String sql = "select m_grade from member where m_id = ? and m_pwd = ? ";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			rs = psmt.executeQuery();
			if (rs.next())
				grant = rs.getString("m_grade");
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

			while(rs.next()) {

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
	
	//회원정보 수정
	public int updateM(MemberDto dto) {
		int n =0;
		String sql="update member set m_pwd=?,m_name=?,"+
		" m_birth=?,m_email=?,m_phone=?,m_zip=?,m_add1=?,m_add2=?,"+
		" m_grade=?,m_status=?,m_recent=?,m_point=?,m_sex=? "+
		"where m_id=?";
				
				try {
					psmt = conn.prepareStatement(sql);
					psmt.setString(1,dto.getM_pwd());
					psmt.setString(2,dto.getM_name());
					psmt.setDate(3, (Date) dto.getM_birth());
					psmt.setString(4, dto.getM_email());
					psmt.setString(5, dto.getM_phone());
					psmt.setInt(6, dto.getM_zip());
					psmt.setString(7, dto.getM_addr1());
					psmt.setString(8, dto.getM_addr2());
					psmt.setString(9, dto.getM_grade());
					psmt.setString(10, dto.getM_status());
					psmt.setDate(11, (Date)dto.getRecent_connection());
					psmt.setInt(12, dto.getM_point());
					psmt.setString(13, dto.getM_sex());
					psmt.setString(14, dto.getM_id());
					
					 n = psmt.executeUpdate();
				} catch (SQLException e) {
					e.printStackTrace();
				}finally {
					close();
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
			 if(rs.next()) {
					dto.setM_id(rs.getString("m_id"));
					dto.setM_pwd(rs.getString("m_pwd"));
					dto.setM_name(rs.getString("m_name"));
					dto.setM_birth(rs.getDate("m_birth"));
					dto.setM_email(rs.getString("m_email"));
					dto.setM_phone(rs.getString("m_phone"));
					dto.setM_zip(rs.getInt("m_zip"));
					dto.setM_addr1(rs.getString("m_add1"));
					dto.setM_addr2(rs.getString("m_add2"));
					dto.setM_grade(rs.getString("m_grade"));
					dto.setM_au(rs.getString("m_au"));
					dto.setM_status(rs.getString("m_status"));
					dto.setRecent_connection(rs.getDate("m_recent"));
					dto.setM_point(rs.getInt("m_point"));
					dto.setM_sex(rs.getString("m_sex"));
				 
			 } 
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return delete;
		
	
	}

}
