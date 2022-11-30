package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BestDAO {

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
	
	public ArrayList<BestDTO> best_showAll(){
		db_conn();
		ArrayList<BestDTO> s_list = new ArrayList<BestDTO>();
		
		try {
			
			String sql = "select * from t_best";
			
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int seq = rs.getInt(1);
				String img = rs.getString(2);
				String name = rs.getString(3);
				String desc = rs.getString(4);
				String func = rs.getString(5);
				int sort = rs.getInt(6);
				int price = rs.getInt(7);
				String link = rs.getString(8);

					
				BestDTO bdto = new BestDTO(seq, img, name, desc, func,  sort, price, link);
				
				s_list.add(bdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return s_list;
	}
	
}
