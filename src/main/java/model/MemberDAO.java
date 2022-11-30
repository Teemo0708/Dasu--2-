package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int row = 0;
	MemberDTO dto = new MemberDTO();
	
	// 굳이 매개변수에 DTO를 안써도되는 부분이있지만 여러분들이 이해하기 쉽게 DTO를 매개변수로 사용했습니다.
	
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

	// 회원 가입
	public int mem_join(MemberDTO dto) {
		db_conn();
		try {
			
			String sql = "insert into t_member values (?, ?, ?, sysdate, ?)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getMem_id());
			psmt.setString(2, dto.getMem_pw());
			psmt.setString(3, dto.getMem_nick());
			if(dto.getMem_id().equals("Admin")) {
				psmt.setString(4, "A");
			}
			else {
				psmt.setString(4, "U");
			}
			row = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return row;
	}
	
	// 회원 로그인
	public MemberDTO mem_login(MemberDTO dto) {
		db_conn();
		try {
			
			String sql = "select * from t_member where mem_id=? and mem_pw =?";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getMem_id());
			psmt.setString(2, dto.getMem_pw());
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				String nick = rs.getString(3);
				String joindate = rs.getString(4);
				String type = rs.getString(5);
				
				dto.setMem_nick(nick);
				dto.setMem_joindate(joindate);
				dto.setMem_type(type);
			}else {
				dto = null;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return dto;
	}
	
	// 회원 정보 수정
	public int mem_update(MemberDTO dto) {
		db_conn();
		try {
			
			String sql = "update t_member set mem_pw=?,mem_nick=? where mem_id=?";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getMem_pw());
			psmt.setString(2, dto.getMem_nick());
			psmt.setString(3, dto.getMem_id());

			
			row = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return row;
	}
	
	// 회원 탈퇴
	public int mem_delete(MemberDTO dto) {
		db_conn();
		try {
			
			String sql = "delete from t_member where mem_id=?, mem_pw=?";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getMem_id());
			psmt.setString(2, dto.getMem_pw());
			
			row = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db_close();
		}return row;
	}
	
	// 회원 정보 조회 (개인) + 비밀번호 찾기
	public MemberDTO mem_show(MemberDTO dto) {
		db_conn();
			try {
				
				String sql = "select * from t_member where mem_id=?";
				
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, dto.getMem_id());
				
				rs= psmt.executeQuery();
				
				if(rs.next()) {
					String id = rs.getString(1);
					String pw = rs.getString(2);
					String nick = rs.getString(3);
					String joindate = rs.getString(4);
					String type = rs.getString(5);
					
					dto.setMem_id(id);
					dto.setMem_pw(pw);
					dto.setMem_nick(nick);
					dto.setMem_joindate(joindate);
					dto.setMem_type(type);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				db_close();
			}return dto;
	}

	// 회원 정보 조회 (admin)
	public ArrayList<MemberDTO> mem_showAll() {

		db_conn();

		ArrayList<MemberDTO> m_list = new ArrayList<MemberDTO>();

		try {

			String sql = "select * from t_member order by mem_joindate";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery(); 
			
			while (rs.next()) {
				
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String nick = rs.getString(3);
				String joindate = rs.getString(4);
				String type = rs.getString(5);
				
				
				MemberDTO mdto = new MemberDTO(id, pw, nick, joindate, type);

				m_list.add(mdto);
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db_close();
		}
		return m_list;
	}
}
