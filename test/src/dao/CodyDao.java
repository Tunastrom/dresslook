package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import dto.CodyDto;

public class CodyDao {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private DataSource ds; // 커넥션 pool 사용을 위한 데이터연결 생성 객체

	private String driver = "oracle.jdbc.driver.OracleDriver";

	private String url = "jdbc:oracle:thin:@39.116.34.40:1524:dl";
	// private String url="jdbc:oracle:thin:@localhost:1523:dl"; //개인PC 서버
	private String user = "dl";
	private String password = "dl";
	
	public void DAO() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("good");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int CodyInsert(CodyDto dto) {
		DAO();
		int n = 0;
		
		String sql = "insert into cody (C_NUM, M_ID, SUBJECT, CONTENTS, C_READ, L_CODE, TAG, C_DATE)"
				   + " values((select nvl(max(c_num),0) from cody)+1, ?, ?, ?, 0, ?, ?, sysdate)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getM_id());
			psmt.setString(2, dto.getSubject());
			psmt.setString(3, dto.getContents());
			psmt.setString(4, dto.getL_code());
			psmt.setString(5, dto.getTag());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return n;
	}
	
	public CodyDto CodySelect(String id, String l_code){
		DAO();
		CodyDto dto = null;
		String sql = "select * from cody where m_id=? and l_code=?";
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setString(1,id);
			psmt.setString(2, l_code);
			rs = psmt.executeQuery();
			if (rs.next()) {
				dto = new CodyDto();
				dto.setC_num(rs.getInt("c_num"));
				dto.setM_id(rs.getString("m_id"));
				dto.setSubject(rs.getString("subject"));
				dto.setContents(rs.getString("contents"));
				dto.setTag(rs.getString("tag"));
				dto.setL_code(rs.getString("l_code"));
				dto.setC_date(rs.getDate("c_date"));
				dto.setC_read(rs.getInt("c_read"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}
}
