package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class markupDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int row = 0;
	MemberDTO dto = new MemberDTO();
	
	
	public void db_conn() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String user = "cgi_8_0704_2";
			String password = "smhrd2";

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

	public int markup_insert(markupDTO dto) {
		db_conn();
		try {
			
			String sql = "insert into T_supmark values(t_supmark_seq.nextval,sysdate,?,?)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getMem_id());
			psmt.setInt(2, dto.getSup_seq());
			
			row = psmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return row;
	}
	
	public int markup_delete(markupDTO dto) {
		db_conn();
		try {
			
			String sql = "delete from t_supmark where sup_seq=? and mem_id=? ";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, dto.getSup_seq());
			psmt.setString(2, dto.getMem_id());
			
			row = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return row;
	}
	
	public ArrayList<markupDTO> markup_show(markupDTO dto) {
		db_conn();
		
		ArrayList<markupDTO> list = new ArrayList<>();
		try {
			String sql = "select * from T_SUPPLEMENTS where sup_seq in (select sup_seq from t_supmark where mem_id = ?)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getMem_id());
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				
					int seq = rs.getInt(1);
					String img = rs.getString(2);
					String name = rs.getString(3);
					String descString = rs.getString(4);
					String func = rs.getString(5);
					int price = rs.getInt(7);
					String link = rs.getString(8);
					
					markupDTO mdto = new markupDTO(seq, img, name, descString, func, price, link);
					list.add(mdto);
				}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return list;
	}
}
