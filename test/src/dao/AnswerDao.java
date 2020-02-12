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

//	전체회원 목록 가져오기
	public ArrayList<AnswerDto> select() {
		list = new ArrayList<AnswerDto>();
		String sql = "select * from answer";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				dto = new AnswerDto();
				dto.setM_id(rs.getString("m_id"));
				dto.setM_pwd(rs.getString("m_pwd"));
				dto.setM_name(rs.getString("m_name"));
				dto.setM_birth(rs.getDate("m_birth"));
				dto.setM_email(rs.getString("m_email"));
				dto.setM_phone(rs.getString("m_phone"));
				dto.setM_zip(rs.getInt("m_zip"));
				dto.setM_addr1(rs.getString("m_add1"));
				dto.setM_addr2(rs.getString("m_add2"));
				dto.setM_grade(rs.getString("m_grade"));
				dto.setM_au(rs.getString("m_au"));
				dto.setM_status(rs.getString("m_status"));
				dto.setRecent_connection(rs.getDate("m_recent"));
				dto.setM_point(rs.getInt("m_point"));
				dto.setM_sex(rs.getString("m_sex"));
				list.add(dto);
				System.out.println(list);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}

		close();
		return list;
	}

	
}
