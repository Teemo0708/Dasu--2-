package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class RecommendDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int row = 0;
	MemberDTO dto = new MemberDTO();

	public void db_conn() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "hr";
			String password = "hr";

			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void db_close() {

		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// Reco 추가
	public int reco_insert(RecommendDTO dto) {
		db_conn();
		try {
			String sql = "insert into t_recommend values(t_recommend_seq.nextval, ?, ?, sysdate, ? )";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getMem_id());
			psmt.setInt(2, dto.getSup_seq());
			psmt.setString(3, dto.getReco_memo());

			row = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db_close();
		}
		return row;
	}
	
	// Reco 수정
	public int reco_update(RecommendDTO dto) {
		db_conn();
		try {
			
			String sql = "update t_recommend set reco_memo";
			
			psmt = conn.prepareStatement(sql);
			
			row = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return row;
	}
	
	// Reco 조회
	public RecommendDTO reco_show(RecommendDTO dto) {
		db_conn();
		try {
			String sql = "select * from t_recommend where mem_id=?";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getMem_id());
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				int r_seq = dto.getReco_seq();
				String m_id = dto.getMem_id();
				int s_seq = dto.getSup_seq();
				String r_date = dto.getReco_date();
				String r_memo = dto.getReco_memo();
				
				dto.setReco_seq(r_seq);
				dto.setMem_id(m_id);
				dto.setSup_seq(s_seq);
				dto.setReco_date(r_date);
				dto.setReco_memo(r_memo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return dto;
	}
	
	// Reco 삭제
	public int reco_delete(RecommendDTO dto) {
		db_conn();
		try {
			
			String sql = "delete from t_recommend where reco_seq=?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getReco_seq());
			
			row = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return row;
	}
	
	// Reco 전부 조회 (admin)
	public ArrayList<RecommendDTO> reco_showAll() {
		db_conn();
		
		ArrayList<RecommendDTO> r_list = new ArrayList<RecommendDTO>();
		try {
			String sql = "select * from t_recommend";
			
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int r_seq = rs.getInt(1);
				String m_id = rs.getString(2);
				int s_seq = rs.getInt(3);
				String r_date = rs.getString(4);
				String r_memo = rs.getString(5);
				
				RecommendDTO rdto = new RecommendDTO(r_seq, m_id, s_seq, r_date, r_memo);
				
				r_list.add(rdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return r_list;
	}
}
