<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, dto.*, dao.*"%>
<%@ page errorPage="exceptionNoBookId.jsp" %>
<%@ include file="dbconn.jsp" %> <!-- DB 연결 파일 포함 -->
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" /> <!-- DAO 객체를 세션 범위에서 사용 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 상세 정보</title>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" />
</head>

<script type="text/javascript">
	// 장바구니에 도서를 추가할 때 확인 메시지를 띄우고, 확인하면 폼을 제출하는 함수
	function addToCart(){
		if(confirm("도서를 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		} else{
			document.addForm.reset(); // 취소 시 폼을 초기화
		}
	}
</script>

<body>
	<div class="container py-4">
		<%@ include file="menu.jsp"%> <!-- 메뉴 JSP 포함 -->
		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold">도서정보</h1>
				<p class="col-md-8 fs-4">BookInfo</p>
			</div>
		</div>
		
		<%
			// URL에서 도서 ID 파라미터를 가져옴
			String bookId = request.getParameter("id");
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			// 도서 정보를 가져오기 위한 SQL 쿼리
			String sql = "SELECT * FROM book WHERE b_id=?";
			
			// SQL 쿼리 실행 준비
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bookId); // 책 ID 파라미터 설정
			rs = pstmt.executeQuery(); // 쿼리 실행
			
			// 쿼리 결과에서 첫 번째 레코드 가져오기
			while(rs.next()){
		%>

		<div class="row align-items-md-stretch">
			<div class="col-md-5">
				<!-- 도서 이미지를 출력, 파일 이름을 DB에서 가져옴 -->
				<img src="./resources/images/<%=rs.getString("b_filename") %>" style="width: 70%">
			</div>
			<div class="col-md-6">
				<!-- 도서 정보 출력 -->
				<h3><b><%=rs.getString("b_name")%></b></h3>
				<p><%=rs.getString("b_description") %></p>
				<p><b>도서코드: </b><span class="badge text-bg-danger"><%=rs.getString("b_id") %></span></p>
				<p><b>저자</b>: <%=rs.getString("b_author") %></p>
				<p><b>출판사</b>: <%=rs.getString("b_publisher") %></p>
				<p><b>출판일</b>: <%=rs.getString("b_releaseDate") %></p>
				<p><b>분류</b>: <%=rs.getString("b_category") %></p>
				<p><b>재고수</b>: <%=rs.getString("b_unitsInStock") %></p>
				<h4><%=rs.getString("b_unitPrice") %>원</h4>
				<!-- 장바구니에 추가하기 폼, 확인 후 도서를 장바구니에 추가 -->
				<p><form action="./addCart.jsp?id=<%=rs.getString("b_id") %>" name="addForm" method="post">
						<p><a href="#" class="btn btn-info" onclick="addToCart()">도서주문 &raquo;</a>
						<a href="./cart.jsp?id=<%=rs.getString("b_id") %>" class="btn btn-warning">장바구니 &raquo;</a>
						<a href="./books.jsp" class="btn btn-secondary">도서목록 &raquo;</a>
					</form>
			</div>
		</div>
		<%
			} // 도서 정보가 있으면 상세 정보를 출력
			// 리소스 정리
			if (rs != null)
				rs.close(); // ResultSet 닫기
			if (pstmt != null)
				pstmt.close(); // PreparedStatement 닫기
			if (conn != null)
				conn.close(); // DB 연결 닫기
		%>
		
		<jsp:include page="footer.jsp" /> <!-- 푸터 포함 -->
	</div>
</body>
</html>
