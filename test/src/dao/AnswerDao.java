/**
 * 
 */
package dao;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.AnswerDto;


public class AnswerDao extends DAO {
	private AnswerDto dto;
	private ArrayList<AnswerDto> list;

	public AnswerDao() {
		super();
	}

//	뎃글 목록 가져오기
	public ArrayList<AnswerDto> select() {
		list = new ArrayList<AnswerDto>();
		String sql = "select * from answer";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				dto = new AnswerDto();
				dto.setM_id(rs.getString("m_id"));
				dto.setA_num(rs.getInt("a_num"));
				dto.setC_num(rs.getInt("c_num"));
				dto.setContents(rs.getString("contents"));
				list.add(dto);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}

		close();
		return list;
	}

	
}
