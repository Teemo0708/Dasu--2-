package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class SupDAO {

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
	
	// sup 추가
	public int sup_insert(SupDTO dto) {
		
		db_conn();
		try {
			
			String sql = "insert into t_supplements values(t_supplements_seq.nextval ,?,?,?,?,?,?,?)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getSup_img());
			psmt.setString(2, dto.getSup_name());
			psmt.setString(3, dto.getSup_description());
			psmt.setString(4, dto.getSup_func());
			psmt.setInt(5, dto.getSup_sort());
			psmt.setInt(6, dto.getSup_price());
			psmt.setString(7, dto.getSup_link());
			
			
			row = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return row; 
	}
	
	// sup 조회
	public SupDTO sup_show(SupDTO dto) {
		db_conn();
		try {
			
			String sql = "select * from t_supplements where sup_seq=?";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, dto.getSup_seq());
			
			rs=psmt.executeQuery();
			
			if(rs.next()) {
				String img = rs.getString(2);
				String name = rs.getString(3);
				String desc = rs.getString(4);
				String func = rs.getString(5);
				int sort = rs.getInt(6);
				int price = rs.getInt(7);
				String link = rs.getString(8);
				
				dto.setSup_name(name);
				dto.setSup_description(desc);
				dto.setSup_price(price);
				dto.setSup_link(link);
				dto.setSup_img(img);
				dto.setSup_func(func);
				dto.setSup_sort(sort);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return dto;
	}
	
	// sup 수정
	public int sup_update(SupDTO dto) {
		db_conn();
		try {
			String spl = "update t_supplements set sup_img=?, sup_name= ? , sup_description=?,  sup_func=?, sup_sort=? , sup_price =? ,  sup_link=?  where sup_seq=?";
			
			psmt = conn.prepareStatement(spl);
			
			
			psmt.setString(1, dto.getSup_img());
			psmt.setString(2, dto.getSup_name());
			psmt.setString(3, dto.getSup_description());
			psmt.setString(4, dto.getSup_func());
			psmt.setInt(5, dto.getSup_sort());
			psmt.setInt(6, dto.getSup_price());
			psmt.setString(7, dto.getSup_link());
			psmt.setInt(8, dto.getSup_seq());
			
			row = psmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return row;
	}
	
	// sup 삭제
	public int sup_delete(SupDTO dto) {
		db_conn();
		try {
			String sql = "delete t_supplements where sup_seq = ?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getSup_seq());
			
			row = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return row;
		
	}

	// sup 전부 조회
	public ArrayList<SupDTO> sup_showAll(){
		db_conn();
		ArrayList<SupDTO> s_list = new ArrayList<SupDTO>();
		
		try {
			
			String sql = "select * from t_supplements";
			
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

					
				SupDTO sdto = new SupDTO(seq, img, name, desc, func,  sort, price, link);
				
				s_list.add(sdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return s_list;
	}
	
	public ArrayList<SupDTO> sup_showCns(){
		db_conn();
		ArrayList<SupDTO> s_list = new ArrayList<SupDTO>();
		
		try {
			
			String sql = "select * from t_supplements where sup_sort=1";
			
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

					
				SupDTO sdto = new SupDTO(seq, img, name, desc, func,  sort, price, link);
				
				s_list.add(sdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return s_list;
	}
	
	public ArrayList<SupDTO> sup_showLutein(){
		db_conn();
		ArrayList<SupDTO> s_list = new ArrayList<SupDTO>();
		
		try {
			
			String sql = "select * from t_supplements where sup_sort=2";
			
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

					
				SupDTO sdto = new SupDTO(seq, img, name, desc, func,  sort, price, link);
				
				s_list.add(sdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return s_list;
	}
	
	public ArrayList<SupDTO> sup_showCVita(){
		db_conn();
		ArrayList<SupDTO> s_list = new ArrayList<SupDTO>();
		
		try {
			
			String sql = "select * from t_supplements where sup_sort=3";
			
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

					
				SupDTO sdto = new SupDTO(seq, img, name, desc, func,  sort, price, link);
				
				s_list.add(sdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return s_list;
	}
	
	public ArrayList<SupDTO> sup_showVitaA(){
		db_conn();
		ArrayList<SupDTO> s_list = new ArrayList<SupDTO>();
		
		try {
			
			String sql = "select * from t_supplements where sup_sort=4";
			
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

					
				SupDTO sdto = new SupDTO(seq, img, name, desc, func,  sort, price, link);
				
				s_list.add(sdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return s_list;
	}

	public ArrayList<SupDTO> sup_showVitaB(){
		db_conn();
		ArrayList<SupDTO> s_list = new ArrayList<SupDTO>();
		
		try {
			
			String sql = "select * from t_supplements where sup_sort=5";
			
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

					
				SupDTO sdto = new SupDTO(seq, img, name, desc, func,  sort, price, link);
				
				s_list.add(sdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return s_list;
	}
	
	public ArrayList<SupDTO> sup_showVitaC(){
		db_conn();
		ArrayList<SupDTO> s_list = new ArrayList<SupDTO>();
		
		try {
			
			String sql = "select * from t_supplements where sup_sort=6";
			
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

					
				SupDTO sdto = new SupDTO(seq, img, name, desc, func,  sort, price, link);
				
				s_list.add(sdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return s_list;
	}
	
	public ArrayList<SupDTO> sup_showVitaD(){
		db_conn();
		ArrayList<SupDTO> s_list = new ArrayList<SupDTO>();
		
		try {
			
			String sql = "select * from t_supplements where sup_sort=7";
			
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

					
				SupDTO sdto = new SupDTO(seq, img, name, desc, func,  sort, price, link);
				
				s_list.add(sdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return s_list;
	}
	
	public ArrayList<SupDTO> sup_showOmega(){
		db_conn();
		ArrayList<SupDTO> s_list = new ArrayList<SupDTO>();
		
		try {
			
			String sql = "select * from t_supplements where sup_sort=8";
			
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

					
				SupDTO sdto = new SupDTO(seq, img, name, desc, func,  sort, price, link);
				
				s_list.add(sdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return s_list;
	}
	
	public ArrayList<SupDTO> sup_showIodine(){
		db_conn();
		ArrayList<SupDTO> s_list = new ArrayList<SupDTO>();
		
		try {
			
			String sql = "select * from t_supplements where sup_sort=9";
			
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

					
				SupDTO sdto = new SupDTO(seq, img, name, desc, func,  sort, price, link);
				
				s_list.add(sdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return s_list;
	}
	
	public ArrayList<SupDTO> sup_showIron(){
		db_conn();
		ArrayList<SupDTO> s_list = new ArrayList<SupDTO>();
		
		try {
			
			String sql = "select * from t_supplements where sup_sort=10";
			
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

					
				SupDTO sdto = new SupDTO(seq, img, name, desc, func,  sort, price, link);
				
				s_list.add(sdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return s_list;
	}
	
	public ArrayList<SupDTO> sup_showMag(){
		db_conn();
		ArrayList<SupDTO> s_list = new ArrayList<SupDTO>();
		
		try {
			
			String sql = "select * from t_supplements where sup_sort=11";
			
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

					
				SupDTO sdto = new SupDTO(seq, img, name, desc, func,  sort, price, link);
				
				s_list.add(sdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return s_list;
	}
	
	public ArrayList<SupDTO> sup_showZinc(){
		db_conn();
		ArrayList<SupDTO> s_list = new ArrayList<SupDTO>();
		
		try {
			
			String sql = "select * from t_supplements where sup_sort=12";
			
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

					
				SupDTO sdto = new SupDTO(seq, img, name, desc, func,  sort, price, link);
				
				s_list.add(sdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return s_list;
	}
	
	public ArrayList<SupDTO> sup_showPro(){
		db_conn();
		ArrayList<SupDTO> s_list = new ArrayList<SupDTO>();
		
		try {
			
			String sql = "select * from t_supplements where sup_sort=13";
			
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

					
				SupDTO sdto = new SupDTO(seq, img, name, desc, func,  sort, price, link);
				
				s_list.add(sdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return s_list;
	}
	
	public ArrayList<SupDTO> sup_showLacto(){
		db_conn();
		ArrayList<SupDTO> s_list = new ArrayList<SupDTO>();
		
		try {
			
			String sql = "select * from t_supplements where sup_sort=14";
			
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

					
				SupDTO sdto = new SupDTO(seq, img, name, desc, func,  sort, price, link);
				
				s_list.add(sdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return s_list;
	}
	
}
