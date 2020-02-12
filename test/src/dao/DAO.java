/**
 * 
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 * @author Yoo Cheolwon
 * write date: 2019-11-07
 * 상위 Dao 객체
 */
public class DAO {
	protected Connection conn;
	protected PreparedStatement psmt;
	protected ResultSet rs;
	protected DataSource ds; //커넥션 pool 사용을 위한 데이터연결 생성 객체
	
	private String driver="oracle.jdbc.driver.OracleDriver";
	private String url="jdbc:oracle:thin:@192.168.0.85:1522:dl";
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
