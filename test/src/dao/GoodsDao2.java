package dao;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import dto.GoodsDto;

public class GoodsDao2 extends DAO {

	public List<GoodsDto> GoodsList() throws SQLException {
		List<GoodsDto> list = new ArrayList<GoodsDto>();

		try {
			String sql = "select * from goods order by g_num";
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
				Blob blob = rs.getBlob("g_image");
				dto.setG_image(blob.getBytes(1, (int) blob.length()));
				Blob blob_pal = rs.getBlob("G_IMAGE_PAL");
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
			conn.commit();
			close();
		}

		return list;
	}

	/*
	 * public List<GoodsDto> GoodsWhereList(GoodsDto dto) { List<GoodsDto> list =
	 * new ArrayList<GoodsDto>();
	 * 
	 * try { String sql = "select * from goods where order by g_num"; psmt =
	 * conn.prepareStatement(sql); rs = psmt.executeQuery(sql);
	 * 
	 * while (rs.next()) { GoodsDto dto = new GoodsDto(); Blob blob =
	 * rs.getBlob("g_image"); dto.setG_num(rs.getInt("g_num"));
	 * dto.setG_name(rs.getString("g_name")); dto.setG_price(rs.getInt("g_price"));
	 * dto.setS_price(rs.getInt("s_price")); dto.setG_size(rs.getString("g_size"));
	 * dto.setColor(rs.getString("color")); dto.setG_inven(rs.getString("g_inven"));
	 * dto.setS_id(rs.getString("s_id")); dto.setMaker(rs.getString("g_maker"));
	 * dto.setG_image(blob.getBytes(1, (int) blob.length()));
	 * dto.setG_info(rs.getString("g_info")); dto.setG_code(rs.getString("g_code"));
	 * dto.setG_sex(rs.getString("g_sex")); dto.setG_prior(rs.getInt("g_prior"));
	 * dto.setG_status(rs.getString("g_status")); list.add(dto); }
	 * 
	 * } catch (SQLException e) { e.printStackTrace(); } finally { close(); }
	 * 
	 * return list; }
	 */
	
	
	public int BlobInsert1(GoodsDto dto) {
		int n = 0;

		String sql = "insert into GOODS"
				+ " (G_NUM,G_NAME,G_PRICE,S_PRICE,G_SIZE,COLOR,G_INVEN,S_ID,G_MAKER,G_IMAGE,G_IMAGE_PAL,G_INFO,G_CODE,G_SEX,G_PRIOR,G_STATUS)"
				+ " values((select nvl(max(g_num),0)+1 from goods),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
			psmt.setBinaryStream(9, new ByteArrayInputStream(dto.getG_image()),dto.getSize());
			psmt.setBinaryStream(10, new ByteArrayInputStream(dto.getG_image_pal()),dto.getSize_pal());
			psmt.setString(11, dto.getG_info());
			psmt.setString(12, dto.getG_code());
			psmt.setString(13, dto.getG_sex());
			psmt.setInt(14, dto.getG_prior());
			psmt.setString(15, dto.getG_status());
			n = psmt.executeUpdate();
			System.out.println("업로드 성공!");
			psmt.close();
			conn.close();
		} catch (SQLException e) {
			System.err.println("sql error = " + e);
		}
		return n;
	}
	

	public int BlobInsert2(GoodsDto dto) {
		int n = 0;
		String sql = "insert into GOODS_IMAGE"
				   + "(g_num, gd_image, img_type)"
				   + " values()"
		
		return n;
	}
}

