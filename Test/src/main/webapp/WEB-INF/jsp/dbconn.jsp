<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	Connection conn = null;
	
	// 데이터베이스 연결 시도
	try{
		// 데이터베이스 URL, 사용자명, 비밀번호 설정
		String url = "jdbc:mysql://localhost:3306/bookmarket"; // MySQL 서버 주소
		String user = "root"; // MySQL 사용자 이름
		String password = "1111"; // MySQL 사용자 비밀번호
		
		// MySQL 드라이버 로드
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		// 데이터베이스 연결
		conn = DriverManager.getConnection(url, user, password);
	} catch(SQLException ex){
		// 예외가 발생하면 오류 메시지를 출력
		out.println("데이터베이스 연결이 실패했습니다.<br>");
		out.println("SQLException: " + ex.getMessage()); // 예외 메시지 출력
	}
%>
