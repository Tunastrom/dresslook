package dept;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import command.DAO;
import jdbc.ConnectionProvider;

public class DeptDAO extends DAO {
	Connection conn;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	
	//싱글톤 구현
	public static DeptDAO instance = new DeptDAO();
	public static DeptDAO getInstance() {
		return instance;
	}
	
	// Create, Read, Update, Delete
	public int insert(DeptBeans bean) {
		int r = 0;
		try{
			//1. connect
			conn = connect();
			String sql = "insert into departments (department_id, "
					+ " department_name, location_id, manager_id ) "
					+ " values( (select max(department_id)+10 from departments),"
					+ "   ?,?,?) ";
			//2 sql 구문 준비
			pstmt = conn.prepareStatement(sql);
			//3. sql 구문 실행
			pstmt.setString(1, bean.getDepartmentName());
			pstmt.setString(2, bean.getLocationId());
			pstmt.setString(3, bean.getManagerId());
			r = pstmt.executeUpdate();			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			//4.연결해제
			disconnect(conn);  
		}
		return r;
	}
	public int update(DeptBeans bean) {
		int r = 0;
		return r;
	}
	public int delete(BigDecimal depaertmentId) {
		int r = 0;
		return r;
	}
	//단건조회
	public DeptBeans selectOne(DeptBeans bean) {
		DeptBeans result = null;
		try{
			conn = connect();
			String sql = "select * from departments where department_id=" 
			               + bean.getDepartmentId()  ;
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if(rs.next()) {   //첫번째 레코드로 이동
				result = new DeptBeans();
				result.setDepartmentName(rs.getString("Department_Name"));
				result.setDepartmentId(rs.getString("Department_id"));
				result.setManagerId(rs.getString("manager_id"));
				result.setLocationId(rs.getString("location_id"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	//다건조회
	public List<Map<String,Object>> selectAll() {
		//결과변수
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try {
			//1. 드라이버 로딩, 커넥터
			conn = connect();			
			//2. statement(구문) 실행
			String sql = "select * from departments";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);			
			//3. 결과처리			
			while(rs.next()) {
				Map<String,Object> map = new HashMap<String,Object>();
				map.put("departmentId", rs.getInt("department_id"));
				map.put("departmentName", rs.getString("department_name"));
				map.put("managerId", rs.getInt("manager_id"));
				map.put("locationId", rs.getBigDecimal("location_id"));
				list.add(map);
			}			
			//4. disconnect
		} catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			disconnect(conn);
		}
		return list;
	}
	//전체 레코드 건수 조회
	public int count() {
		int r = 0;
		try {
			conn = ConnectionProvider.getConnection();
			String sql = "select count(*) as cnt from departments";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				r = rs.getInt(1);
			}			
		}catch(Exception e) { 	e.printStackTrace();		}
		finally {	disconnect(conn);		}
		return r;
	}	
	//페이징처리조회
	public List<Map<String,Object>> selectPage(int first, int last) {
		//결과변수
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try {
			//1. 드라이버 로딩, 커넥터
			conn = connect();			
			//2. statement(구문) 실행
			String sql = " select * from ( select rownum rn, a.*  from ("
					   + " select * from departments order by department_id "
					   + " ) a   ) b where rn between ? and ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, first);
			pstmt.setInt(2, last);
			rs = pstmt.executeQuery();			
			//3. 결과처리			
			while(rs.next()) {
				Map<String,Object> map = new HashMap<String,Object>();
				map.put("departmentId", rs.getInt("department_id"));
				map.put("departmentName", rs.getString("department_name"));
				map.put("managerId", rs.getInt("manager_id"));
				map.put("locationId", rs.getBigDecimal("location_id"));
				list.add(map);
			}			
			//4. disconnect
		} catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			disconnect(conn);
		}
		return list;
	}	
	
	
}
