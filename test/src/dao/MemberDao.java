/**
 * 
 */
package dao;

import java.sql.SQLException;
<<<<<<< HEAD
import java.util.ArrayList;

import dto.GoodsDto;
import dto.MemberDto;
import dto.SellerDto;

public class MemberDao extends DAO {
	private MemberDto dto;
	private ArrayList<MemberDto> list;

	public MemberDao() {
		super();
	}

//	전체회원 목록 가져오기
	public ArrayList<MemberDto> select() {
		list = new ArrayList<MemberDto>();
		String sql = "select * from member";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
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
		}catch(SQLException e) {
			e.printStackTrace();
		}

		close();
		return list;
	}


//	1명의 회원정보 가져오기
	public MemberDto select(String id) {
		dto = new MemberDto();
		
		close();
		return dto;
	}

//	회원가입
	public int insert(MemberDto dto) {
		int n = 0;
		String sql = "insert into member(m_id, m_name, m_pwd, m_birth, m_email, m_phone, m_zip, m_addr1, m_addr2, m_sex)"+ 
		" values(?,?,?,?,?,?,?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getM_id());
			psmt.setString(2, dto.getM_name());
			psmt.setString(3, dto.getM_pwd());
			psmt.setDate(4, dto.getM_birth());
			psmt.setString(5, dto.getM_email());
			psmt.setString(6, dto.getM_phone());
			psmt.setInt(7, dto.getM_zip());
			psmt.setString(8, dto.getM_addr1());
			psmt.setString(9, dto.getM_addr2());
			psmt.setString(10,dto.getM_sex());
			n = psmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}

		close();
		return n;
	}
	
	public int update(MemberDto dto) {
		int n = 0;
		//입력

		close();
		return n;
	}
	
	public int delete(String id) {
		int n = 0;
		//입력

		close();
		return n;
	}
	
//	id중복체크
	public boolean isIdCheck(String id) {
		boolean b = true;
		String sql = "select m_id from member where m_id = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if(rs.next()) b = false; 
				
		}catch(SQLException e){
			e.printStackTrace();
		}
		close();
		return b;
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
			if (rs.next()) grant = rs.getString("m_grade");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return grant;// 로그인 성공시 권한을 넘겨준다.
	}
	
=======

import dto.MemberDto;


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

>>>>>>> branch 'master' of https://github.com/Tunastrom/dresslook.git
}
