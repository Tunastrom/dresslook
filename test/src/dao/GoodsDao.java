package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.io.ByteArrayInputStream;
//import java.io.ByteArrayOutputStream;
//import java.io.File;
//import java.io.FileInputStream;
//import java.io.FileNotFoundException;
//import java.io.IOException;
//import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
//import java.util.Scanner;

import javax.sql.DataSource;

import dto.GoodsDto;
import dto.GoodsImageDto;

public class GoodsDao {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private DataSource ds; //커넥션 pool 사용을 위한 데이터연결 생성 객체
	
	private String driver="oracle.jdbc.driver.OracleDriver";

	private String url="jdbc:oracle:thin:@39.116.34.40:1524:dl";
	//private String url="jdbc:oracle:thin:@localhost:1523:dl"; //개인PC 서버
	private String user="dl";
	private String password="dl";
	
	public void DAO(){
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("good");
		} catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if(rs != null) rs.close();
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();
		}catch(SQLException e) {
			
		}
	}
	
	public List<GoodsDto> GoodsList(String noOrG_nums, String value) {
		DAO();
		List<GoodsDto> list = new ArrayList<GoodsDto>();
		try {
			String sql = null;
			sql = "select * from goods where g_sex = 051"; 
			if (noOrG_nums.equals("N")) {
				//category별 검색
				if (value.equals("0")) {
					//성별, 좋아요 기반 추천 되도록 쿼리구현
					sql += " order by g_num";
				} else {
					//성별, 좋아요, 상품코드 기반 추천 되도록 쿼리구현
					sql += " and g_code = ? order by g_num";
				}
			} else if (noOrG_nums.equals("G")) {
				//특정 상품 번호들 검색
				sql+= " and g_num in("+value+")";
			}
			
			psmt = conn.prepareStatement(sql);
			if (noOrG_nums.equals("N") && !value.equals("0")) {
	
			} 
			rs = psmt.executeQuery(sql);
			while (rs.next()) {
				GoodsDto dto = new GoodsDto();
				dto.setG_num(rs.getInt("g_num"));
				dto.setG_name(rs.getString("g_name"));
				dto.setG_price(rs.getInt("g_price"));
				dto.setS_price(rs.getInt("s_price"));
				dto.setG_size(rs.getString("g_size"));
				dto.setColor(rs.getString("color"));
				dto.setG_inven(rs.getString("g_inven"));
				dto.setS_id(rs.getString("s_id"));
				dto.setMaker(rs.getString("g_maker"));
				dto.setG_fileName(rs.getString("g_filename"));
				dto.setG_info(rs.getString("g_info"));
				dto.setG_code(rs.getString("g_code"));
				dto.setG_sex(rs.getString("g_sex"));
				dto.setG_prior(rs.getInt("g_prior"));
				dto.setG_status(rs.getString("g_status"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	public List<GoodsDto> SellerGoodsList(String sid) {
		DAO();
		List<GoodsDto> list = new ArrayList<GoodsDto>();
		try {
			String sql = null;
			sql = "select * from goods order by g_num"; 
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery(sql);
			while (rs.next()) {
				GoodsDto dto = new GoodsDto();
				dto.setG_num(rs.getInt("g_num"));
				dto.setG_name(rs.getString("g_name"));
				dto.setG_price(rs.getInt("g_price"));
				dto.setS_price(rs.getInt("s_price"));
				dto.setG_size(rs.getString("g_size"));
				dto.setColor(rs.getString("color"));
				dto.setG_inven(rs.getString("g_inven"));
				dto.setS_id(rs.getString("s_id"));
				dto.setMaker(rs.getString("g_maker"));
				dto.setG_fileName(rs.getString("g_filename"));
				dto.setG_info(rs.getString("g_info"));
				dto.setG_code(rs.getString("g_code"));
				dto.setG_sex(rs.getString("g_sex"));
				dto.setG_prior(rs.getInt("g_prior"));
				dto.setG_status(rs.getString("g_status"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	
	public List<GoodsImageDto> GIlist(String g_nums){
		DAO();
		List<GoodsImageDto> list = new ArrayList<GoodsImageDto>(); 
		String sql1 = "select * from goods_image where img_type='pal'";
		if (g_nums != null) {
			sql1 += "and g_num in ("+g_nums+")";
		}
		try {
			psmt = conn.prepareStatement(sql1);
			rs = psmt.executeQuery();
			while (rs.next()) {
				GoodsImageDto dto = new GoodsImageDto();
				dto.setG_num(rs.getInt("g_num"));	
				dto.setGd_fileName(rs.getString("gd_filename"));
				dto.setImg_type(rs.getString("img_type"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		 finally { 
			close(); 
		}
		 
		return list;
	}
	public List<GoodsImageDto> SellerGIlist(String g_nums){
		DAO();
		List<GoodsImageDto> list = new ArrayList<GoodsImageDto>(); 
		String sql1 = "select * from goods_image where img_type='pal'";
		if (g_nums != null) {
			sql1 += ", g_nums in ("+g_nums+")";
		}
		try {
			psmt = conn.prepareStatement(sql1);
			rs = psmt.executeQuery();
			while (rs.next()) {
				GoodsImageDto dto = new GoodsImageDto();
				dto.setG_num(rs.getInt("g_num"));	
				dto.setGd_fileName(rs.getString("gd_filename"));
				dto.setImg_type(rs.getString("img_type"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		 finally { 
			close(); 
		}
		 
		return list;
	}
	
	public int goodsInsert(GoodsDto dto) {
		DAO();
		int n = 0;
		String sql = "insert into GOODS"
				+ " (G_NUM,G_NAME,G_PRICE,S_PRICE,G_SIZE,COLOR,G_INVEN,S_ID,G_MAKER,G_INFO,G_CODE,G_SEX,G_PRIOR,G_STATUS,G_FILENAME)"
				+ " values((select nvl(max(g_num),0)+1 from goods),?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getG_name());
			psmt.setInt(2, dto.getG_price());
			psmt.setInt(3, dto.getS_price());
			psmt.setString(4, dto.getG_size());
			psmt.setString(5, dto.getColor());
			psmt.setString(6, dto.getG_inven());
			psmt.setString(7, dto.getS_id());
			psmt.setString(8, dto.getMaker());	
			psmt.setString(9, dto.getG_info());
			psmt.setString(10, dto.getG_code());
			psmt.setString(11, dto.getG_sex());
			psmt.setInt(12, dto.getG_prior());
			psmt.setString(13, dto.getG_status());
			psmt.setString(14,dto.getG_fileName());
			n = psmt.executeUpdate();
			System.out.println("업로드 성공!");
			psmt.close();
		} catch (SQLException e) {
			System.err.println("sql error = " + e);
		} finally {
			try {
				conn.commit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			close();
		} 
		
		return n;
	}
	
	public int giInsert(GoodsImageDto dto){
		DAO();
		int n = 0;
		String sql1 = "select max(g_num) g_num from goods";
		int g_num = 0;
		try {
			psmt = conn.prepareStatement(sql1);
			rs = psmt.executeQuery();
			if (rs.next()) {
				g_num = rs.getInt("g_num");	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		String sql2 = "insert into GOODS_IMAGE"
				   + "(g_num, img_type, gd_filename)"
				   + " values(?,?,?)";
		try {
			psmt=conn.prepareStatement(sql2);
			psmt.setInt(1, g_num);
			psmt.setString(2,dto.getImg_type());
			psmt.setString(3,dto.getGd_fileName());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.commit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			close();
		}
		return n;
	}
}

