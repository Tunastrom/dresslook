package dao;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.OrdDetailDto;

public class OrdDetailDao extends DAO {

	public ArrayList<OrdDetailDto> select(String id) {
		OrdDetailDto dto = new OrdDetailDto();
		ArrayList<OrdDetailDto> list = new ArrayList<OrdDetailDto>();
		String sql = "select g.g_image, g.maker, o.g_name, o.od_price "
				+ "from ord o join orddatil d using(o_num) join goods g " + "on(d.g_num=g.g_mum) where m_id=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				dto.setO_num(rs.getInt("o_num"));
				dto.setG_image(rs.getBytes("g_image"));
				dto.setMaker(rs.getString("maker"));
				dto.setG_name(rs.getString("o_name"));
				dto.setOd_price(rs.getInt("od_price"));
				list.add(dto);
				System.out.println(list);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		close();

		return list;

	}

}
