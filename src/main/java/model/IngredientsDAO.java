package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class IngredientsDAO {

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

	// ingre 추가
	public int ingre_insert(IngredientsDTO dto) {
		db_conn();
		try {
			
			String sql = "insert into t_ingredients values(t_ingredients_seq.nextval, ?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, dto.getSup_seq());
			psmt.setString(2, dto.getIngre_item());
			psmt.setInt(3, dto.getIngre_content());
			psmt.setString(4, dto.getContent_unit());
			
			row = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return row;
	}
	
	// ingre 조회
	public IngredientsDTO ingre_show(IngredientsDTO dto) {
		db_conn();
		try {
			
			String sql = "select * from t_ingredients where ingre_seq=?";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, dto.getIngre_seq());
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				int i_seq = dto.getIngre_seq();
				int s_seq = dto.getSup_seq();
				String i_item = dto.getIngre_item();
				int i_content = dto.getIngre_content();
				String c_unit = dto.getContent_unit();
				
				dto.setIngre_seq(i_seq);
				dto.setSup_seq(s_seq);
				dto.setIngre_item(i_item);
				dto.setIngre_content(i_content);
				dto.setContent_unit(c_unit);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return dto;
	}

	// ingre 전부 조회
	public ArrayList<IngredientsDTO> ingre_showAll(){
		db_conn();
		
		ArrayList<IngredientsDTO> i_list = new ArrayList<IngredientsDTO>();
		
		try {
			
			String sql = "select * from t_ingredients";
			
			psmt= conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()){
				
				int ingre_Seq = rs.getInt(1);
				int sup_Seq = rs.getInt(2);
				String ingre_itme = rs.getString(3);
				int ingre_cont = rs.getInt(4);
				String cont_unit = rs.getString(5);
				
				IngredientsDTO idto = new IngredientsDTO(ingre_Seq, sup_Seq, ingre_itme, ingre_cont, cont_unit);
				
				i_list.add(idto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return i_list;
	}
}
