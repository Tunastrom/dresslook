package dao;

import java.io.ByteArrayInputStream;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.LookDto;
import dto.MemberDto;
/*import oracle.sql.BLOB;*/
import java.sql.Blob;

public class LookDao extends DAO {

	private LookDto dto;
	private ArrayList<LookDto> list;
	public LookDao() {
		super();
	}
	
	public ArrayList<LookDto> LooksList() {
		list = new ArrayList<LookDto>();
		String sql1 = "select * from look order by l_code ";
		String sql2 = "select g_num from look_detail where l_code=?";
		//where 조건으로 open 여부, 추천기능 차후구현
		String l_code = null;
		try {
			psmt = conn.prepareStatement(sql1);
			rs = psmt.executeQuery();
			while (rs.next()) {
				dto = new LookDto();
				Blob blob = rs.getBlob("L_image");
				dto.setL_code(rs.getString("l_code"));
				dto.setL_image(blob.getBytes(1, (int) blob.length()));
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
					dto.setG_nums(rs.getString("g_num"));
					list.set(i,dto);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return list;
	}

	
	 public ArrayList<LookDto> LookDetailList(){ 
		 list = new ArrayList<LookDto>();
		 String sql1 = "select l_code from "; 
		 
		 String sql2 ="select rownum, a.* from look_detail a where rownum <= 0 order by l_code";
		 return list;
	 }
	 
	
	/*
	 * public LookDto select(String l_code) { dto = new LookDto();
	 * 
	 * close(); return dto; }
	 */
	
//	Look Insert
	public int LookInsert(LookDto dto) {
		int n = 0;
		String sql = "insert into look(l_code, l_image, m_id, l_open) "
				   + "values((select nvl(max(l_code),0)+1 from look),?,?,?)";
		try {
			
			ByteArrayInputStream inputStream = new ByteArrayInputStream(dto.getL_image());
			psmt = conn.prepareStatement(sql);
			psmt.setBinaryStream(1, inputStream);
			psmt.setString(2, dto.getM_id());
			psmt.setString(3, dto.getL_open());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return n;
	}
	
	public int LookDetailInsert(LookDto dto) {
		int n = 0;
		String sql1= "select nvl(max(l_code),0) l_code from look";
		String gnums = dto.getG_nums();
		String gnum[] = gnums.split(",");
		System.out.println("gnum.split.length: "+gnum.length);
		String sql2 = "insert into LOOK_DETAIL(l_code, g_nums) "
			       + "values(?, ?)";  
		try {
			psmt = conn.prepareStatement(sql1);
			rs = psmt.executeQuery();
			if(rs.next()) {
				String lcode = rs.getString("l_code");
				psmt = conn.prepareStatement(sql2);
				for (int i=0; i< gnum.length; i++) {
					psmt.setString(1, lcode);
					System.out.println("gnum["+i+"]="+gnum[i]);
					psmt.setInt(2, Integer.parseInt(gnum[i]));
					n += psmt.executeUpdate();
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		close();
		return n;
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
