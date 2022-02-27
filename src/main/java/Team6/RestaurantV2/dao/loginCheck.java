package Team6.RestaurantV2.dao;

import java.sql.*;

public class loginCheck {
	
	public static boolean pass(String id, String pw) {
		String pass;
		
		Connection conn = demo_DAO.getConnection();
		
		String sql = "select * from customer where id = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();			
			rs.next();
			pass = rs.getString("pw");
			demo_DAO.close(rs);
			demo_DAO.close(pstmt);
			demo_DAO.close(conn);
			if(pass.equals(pw))
				return true;
			} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public static boolean check(String id) {
		Connection conn = demo_DAO.getConnection();
		
		String sql = "select id from customer";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				if(rs.getString("id").equals(id))
					return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public static boolean checkAdmin(String admin) {
		Connection conn = demo_DAO.getConnection();
		
		String sql = "select admin from customer";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				if(rs.getString("admin").equals(admin))
					return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
