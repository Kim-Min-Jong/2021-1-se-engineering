package Team6.RestaurantV2.dao;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class demo_DAO {
	public static Connection getConnection() {
		Connection conn = null;
		try{
	    	  Class.forName("org.mariadb.jdbc.Driver"); // 마리아DB
		      conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/booksys?characterEncoding=UTF-8"
	  	    		, "root","qwerty1234");
	  	    		System.out.println("연결성공");
	    }catch(SQLException e){
	    	System.out.println("연결실패<br>");
	    	System.out.println(e.getMessage());
	    } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("연결실패");
	    	e.printStackTrace();
	    }
		
		return conn;
	}
	public static void close(Connection conn) {
		try {
			if(conn!=null)
				conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static void close(PreparedStatement pstmt) {
		try {
			if(pstmt!=null)
				pstmt.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static void close(Statement stmt) {
		try {
			if(stmt!=null)
				stmt.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static void close(ResultSet rs) {
		try {
			if(rs!=null)
				rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
