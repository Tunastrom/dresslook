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

public class GoodsDao extends DAO {

	public List<GoodsDto> GoodsList() {
		List<GoodsDto> list = new ArrayList<GoodsDto>();

		try {
			String sql = "select * from goods";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery(sql);

			while (rs.next()) {
				GoodsDto dto = new GoodsDto();
				Blob blob = rs.getBlob("g_image");
				dto.setG_num(rs.getInt("g_num"));
				dto.setG_name(rs.getString("g_name"));
				dto.setG_price(rs.getInt("g_price"));
				dto.setS_price(rs.getInt("s_price"));
				dto.setG_size(rs.getString("g_size"));
				dto.setColor(rs.getString("color"));
				dto.setG_inven(rs.getString("g_inven"));
				dto.setS_id(rs.getString("s_id"));
				dto.setMaker(rs.getString("g_maker"));
				dto.setG_image(blob.getBytes(1, (int) blob.length()));
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

	public int GoodsInsert(GoodsDto dto) {
		int n = 0;
		Scanner sc = new Scanner(System.in);
		System.out.print("업로드 할 파일 = ");
		String filename = sc.next();
		File f = new File(filename);
		if (!f.exists()) {
			System.out.println("파일이 존재 하지 않습니다.");
			System.exit(1);
		}
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		FileInputStream fis = null;
		try {
			fis = new FileInputStream(f);
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		while (true) {
			int x = 0;
			try {
				x = fis.read();
			} catch (IOException e) {
				
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (x == -1)
				break;
			bos.write(x);
		}
		try {
			fis.close();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			bos.close();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		ByteArrayInputStream bis = new ByteArrayInputStream(bos.toByteArray());
		String sql = "insert into GOODS"
				+ " (G_NUM,G_NAME,G_PRICE,S_PRICE,G_SIZE,COLOR,G_INVEN,S_ID,G_MAKER,G_IMAGE,G_INFO,G_CODE,G_SEX,G_PRIOR,G_STATUS)"
				+ " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getG_num());
			psmt.setString(2, dto.getG_name());
			psmt.setInt(3, dto.getG_price());
			psmt.setInt(4, dto.getS_price());
			psmt.setString(5, dto.getG_size());
			psmt.setString(6, dto.getColor());
			psmt.setString(7, dto.getG_inven());
			psmt.setString(8, dto.getS_id());
			psmt.setString(9, dto.getMaker());
			psmt.setBinaryStream(10, bis, bos.size());
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
}
