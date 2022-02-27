<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Team6.RestaurantV2.dao.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login process</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String mode = request.getParameter("admin");

	if (loginCheck.checkAdmin(mode)) {//관리자 확인
		if (loginCheck.pass(id, pw)) {//아이디 비밀번호 확인

			session.setAttribute("id", id);
			session.setAttribute("mode", mode);
			if (mode.equals("admin")) {
				out.println("<script>");
				out.println("alert('관리자모드로 로그인합니다!')");
				out.println("location.href='mainWeb-logined'");
				out.println("</script>");
			}
			if (mode.equals("user")) {
				out.println("<script>");
				out.println("location.href='mainWeb-logined_user'");
				out.println("</script>");
			}
		} else {
			out.println("<script>");
			out.println("alert('정보가 틀렸습니다!')");
			out.println("location.href='login'");
			out.println("</script>");
		}
	} else {
		out.println("<script>");
		out.println("alert('사용 모드를 다시 선택해주세요!')");
		out.println("location.href='login'");
		out.println("</script>");
	}
	
	%>
</body>
</html>