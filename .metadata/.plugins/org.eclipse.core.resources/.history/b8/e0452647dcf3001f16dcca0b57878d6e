<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>

<%
    // 'id' 파라미터로 전달된 도서 ID 값을 가져옴
    String bookId = request.getParameter("id");
    
    // PreparedStatement와 ResultSet 객체 초기화
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    
    // 책 데이터 조회 쿼리 실행
    String sql = "SELECT * FROM book";
    pstmt = conn.prepareStatement(sql);
    rs = pstmt.executeQuery();
    
    // 책이 존재하는 경우 해당 책을 삭제하는 쿼리 실행
    if(rs.next()){
        sql = "DELETE FROM book WHERE b_id=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, bookId); // bookId 파라미터를 설정
        pstmt.executeUpdate(); // 삭제 쿼리 실행
    } else
        out.println("일치하는 도서가 없습니다."); // 도서가 없으면 메시지 출력
    
    // 데이터베이스 연결 객체 및 리소스 닫기
    if(rs != null)
        rs.close();
    if(pstmt != null)
        pstmt.close();
    if(conn != null)
        conn.close();
    
    // 삭제 후 editBook.jsp로 리다이렉트
    response.sendRedirect("editBook.jsp?edit=delete");
%>
