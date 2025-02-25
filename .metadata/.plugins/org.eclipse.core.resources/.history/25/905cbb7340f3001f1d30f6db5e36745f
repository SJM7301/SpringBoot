<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, dto.*, dao.*" %>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session"/> <!-- BookRepository 객체를 session 범위로 사용 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 목록</title>
<!-- Bootstrap 스타일시트 연결 -->
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
	<div class="container py-4">
		<!-- 메뉴 JSP 파일 포함 -->
		<%@ include file="menu.jsp" %>

		<!-- 도서 목록 제목 영역 -->
		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold">도서목록</h1>
            	<p class="col-md-8 fs-4">BookList</p>
			</div>
		</div>

		<!-- 데이터베이스 연결 JSP 파일 포함 -->
		<%@ include file="dbconn.jsp" %>

		<!-- 도서 목록을 나타내는 컨테이너 -->
		<div class="row align-items-md-stretch text-center">
			<%
				// 데이터베이스 연결을 위한 PreparedStatement와 ResultSet 객체 선언
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				// SQL 쿼리 작성 (책 정보 조회)
				String sql = "SELECT * FROM book";
				pstmt = conn.prepareStatement(sql); // 쿼리 실행 준비
				rs = pstmt.executeQuery(); // 쿼리 실행 및 결과 받기
				
				// 쿼리 결과를 하나씩 출력하는 반복문
				while(rs.next()){
			%>
			<!-- 도서 하나에 대한 정보를 출력하는 부분 -->
			<div class="col-md-4">
				<div class="h-100 p-2">
					<!-- 책 이미지 출력 -->
					<img src="./resources/images/<%=rs.getString("b_fileName") %>" style="width: 250; height: 350" />
	            	<!-- 책 제목 출력 -->
	            	<h5><b><%=rs.getString("b_name") %></b></h5>
	            	<!-- 책 저자와 출판사 정보 출력 -->
	            	<p><%=rs.getString("b_author") %>
	            	<br><%=rs.getString("b_publisher") %> | <%=rs.getString("b_releaseDate") %>
	           		<!-- 책 설명의 일부 출력 -->
	            	<p><%=rs.getString("b_description").substring(0, 60) %>...
	            	<!-- 책 가격 출력 -->
	            	<p><%=rs.getString("b_unitPrice") %> 원
	            	<!-- 상세 정보 페이지로 이동하는 링크 -->
	            	<p><a href="./book.jsp?id=<%=rs.getString("b_id")%>" class="btn btn-secondary" role = "button"> 상세정보 &raquo;</a>
				</div>
			</div>
			<%
				}
				// 리소스 해제 (결과 세트 및 PreparedStatement, 연결 닫기)
				if(rs != null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			%>
		</div>
		
		<!-- 푸터 JSP 파일 포함 -->
		<%@ include file="footer.jsp" %>
	</div>
</body>
</html>
