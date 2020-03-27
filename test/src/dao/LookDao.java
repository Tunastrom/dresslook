package dao;

//import java.io.ByteArrayInputStream;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.LookDto;
import dto.MemberDto;
/*import oracle.sql.BLOB;*/
//import java.sql.Blob;

public class LookDao extends DAO {

	private LookDto dto;
	private ArrayList<LookDto> list;
	public LookDao() {
		super();
	}
	
	
	public ArrayList<LookDto> LooksList() {
		list = new ArrayList<LookDto>();
		String sql1 = "select * from look order by l_code";
		String sql2 = "SELECT WM_CONCAT(G_NUMS) G_NUMS" + 
				      " FROM LOOK_DETAIL" + 
				      " GROUP BY L_CODE" +
				      " HAVING L_CODE = ?";
		//where 조건으로 open 여부, 추천기능 차후구현
		try {
			psmt = conn.prepareStatement(sql1);
			rs = psmt.executeQuery();
			while (rs.next()) {
				dto = new LookDto();
				/* Blob blob = rs.getBlob("L_image"); */
				/* dto.setL_image(blob.getBytes(1, (int) blob.length())); */
				dto.setL_code(rs.getString("l_code"));
				dto.setL_fileName(rs.getString("l_filename"));
				dto.setM_id(rs.getString("m_id"));
				list.add(dto);
				/* System.out.println(list); */
			}
			psmt = conn.prepareStatement(sql2);
			for(int i=0; i<list.size(); i++) {
				dto = list.get(i);
				psmt.setString(1, dto.getL_code());
				rs = psmt.executeQuery();
				while (rs.next()) {	
					dto.setG_nums(rs.getString("g_nums"));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return list;
	}
	
	public LookDto LookSelect(String l_code){
		LookDto dto = null;
		String sql = null;
		if (l_code.equals("0")) {
			sql = "select * from look where l_code = (select max(to_number(l_code)) from look)";
		} else {
			sql = "select * from look where l_code = ?";
		}
		try {
			psmt = conn.prepareStatement(sql);
			if (!l_code.equals("0")) {
				psmt.setString(1, l_code);
			}
			rs = psmt.executeQuery(sql);
			if (rs.next()) {
				dto = new LookDto();
				dto.setL_code(rs.getString("l_code"));
				dto.setL_fileName(rs.getString("l_fileName"));
				dto.setL_open(rs.getString("l_open"));
				dto.setM_id(rs.getString("m_id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	
	public String lookDetailSelect(String l_code) {
			String result = null;
			String sql = "SELECT WM_CONCAT(G_NUMS) G_NUMS" + 
				      " FROM LOOK_DETAIL" + 
				      " GROUP BY L_CODE" +
				      " HAVING L_CODE = ?";
			System.out.println("sql: "+sql);
			try {
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, l_code);
				rs = psmt.executeQuery();
				if(rs.next()) {
					result = rs.getString("g_nums");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return result; 
	}
	/*
	 * public LookDto select(String l_code) { dto = new LookDto();
	 * 
	 * close(); return dto; }
	 */
	
//	Look Insert
	public String LookInsert(LookDto dto) {
		int n = 0;
		String sql1 = "select nvl(max(to_number(l_code)),0)+1 from look";
	
		String sql2 = "insert into look(l_code, l_filename, m_id, l_open) "
				   + "values(?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql1);
			rs = psmt.executeQuery();
			if(rs.next()) {
				dto.setL_code(rs.getString(1));
			}
			/*
			 * ByteArrayInputStream inputStream = new
			 * ByteArrayInputStream(dto.getL_image());
			 */
			psmt = conn.prepareStatement(sql2);
//			psmt.setBinaryStream(1, inputStream);
			psmt.setString(1, dto.getL_code());
			psmt.setString(2, dto.getL_fileName());
			psmt.setString(3, dto.getM_id());
			psmt.setString(4, dto.getL_open());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ""+n;
	}
	
	public String LookDetailInsert(LookDto dto) {
		int n = 0;
		String gnums = dto.getG_nums();
		String gnum[] = gnums.split(",");
		System.out.println("gnum.split.length: "+gnum.length);
		String sql2 = "insert into LOOK_DETAIL(l_code, g_nums) "
			       + "values(?, ?)";  
		try {
				psmt = conn.prepareStatement(sql2);
				for (int i=0; i< gnum.length; i++) {
					psmt.setString(1, dto.getL_code());
					System.out.println("gnum["+i+"]="+gnum[i]);
					psmt.setInt(2, Integer.parseInt(gnum[i]));
					n += psmt.executeUpdate();
				}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		try {
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return ""+n;
	}
	
	public int update(MemberDto dto) {
		int n = 0;
		// 입력

		close();
		return n;
	}

	public int delete(String l_code) {
		int n = 0;
		// 삭제 조인해야 함
		String sql = "delete l_code from Look where L_code= ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getL_code());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return n;
	}
	public String getCount(String m_id) {

		String sql = "SELECT count(l_code) FROM USER WHERE M_ID = ?";

		try {

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, m_id);

			rs = psmt.executeQuery();

			while (rs.next()) {

				return rs.getString(1);

			}

		} catch (SQLException e) {

			e.printStackTrace();

		}

		return null;

	}

}
