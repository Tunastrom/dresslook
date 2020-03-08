package util;

import java.io.IOException;

import javax.mail.PasswordAuthentication;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import org.apache.catalina.Authenticator;
import org.apache.catalina.connector.Request;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import dao.DAO;

//디비 관련과 커넥션을 만들어 놓은 클래스
//싱글톤 패턴을 사용해서 커넥션이 한번만 되도록 설정.
public class DatabaseUtillity {
	//싱글톤 패턴 - 생성자에서 DataSource객체를 생성해서 instance변수에 할당.
	private BasicDataSource dataSource;
	private static DatabaseUtillity instance = new DatabaseUtillity();

	private DatabaseUtillity(){
		dataSource = new BasicDataSource();//객체 생성
		//프라퍼티 설정
		//1. 연결할 DB와 관련된 설정 DAO import

	}
	public static DatabaseUtillity getInstance(){
		return instance;
	}
	public BasicDataSource getDataSource(){//커넥션을 가져갈 수 있도록 만듬.
		return dataSource;
	}
	public void close(Statement stmt, Connection conn){
		if(stmt!=null){
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public void close(ResultSet rset, Statement stmt, Connection conn){
		if(rset!=null){
			try {
				rset.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(stmt!=null){
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}

