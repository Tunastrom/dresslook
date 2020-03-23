package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;


public class DAO {
	protected Connection conn;
	protected PreparedStatement psmt;
	protected ResultSet rs;
	protected DataSource ds; //커넥션 pool 사용을 위한 데이터연결 생성 객체
	
	private String driver="oracle.jdbc.driver.OracleDriver";

	private String url="jdbc:oracle:thin:@39.116.34.40:1524:dl";
	//private String url="jdbc:oracle:thin:@localhost:1523:dl"; //개인PC 서버
	private String user="dl";
	private String password="dl";
	
	public DAO(){
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("good");
		} catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
//		try {
//			Context initContext = new InitialContext();
//			Context envContext  = (Context)initContext.lookup("java:/comp/env");
//			ds = (DataSource)envContext.lookup("jdbc/Mingwang");
//			conn = ds.getConnection();
//		} catch (NamingException | SQLException e) {
//			e.printStackTrace();
//		}
//		
	}
	
	public void close() {
		try {
			if(rs != null) rs.close();
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();
		}catch(SQLException e) {
			
		}
	}
}
