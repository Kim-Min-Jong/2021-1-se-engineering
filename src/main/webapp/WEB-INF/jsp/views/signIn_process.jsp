<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "Team6.RestaurantV2.dao.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert redirection</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phoneNumber = request.getParameter("phoneNumber");
		
		if(loginCheck.check(id)) {
			out.println("<script>");
			out.println("alert('아이디가 중복됩니다.')");
			out.println("location.href='signIn'");
			out.println("</script>");
		}
		
		Connection conn = demo_DAO.getConnection();
	
		String sql = "insert into customer(id, pw, name, phoneNumber) values (?, ?, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		pstmt.setString(4, phoneNumber);
		pstmt.executeUpdate();	
		
		demo_DAO.close(pstmt);
		demo_DAO.close(conn);
		
		out.println("<script>");
		out.println("alert('회원가입이 완료됐습니다!')");
		out.println("location.href='mainWeb'");
		out.println("</script>");
		%>
	
<%--	<c:import var="url" url="mainWeb"/>
	${url} --%>
</body>
</html>