<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 편집</title>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" />
</head>

<script type="text/javascript">
	// 도서 삭제 확인 팝업 함수
	function deleteConfirm(id) {
		// 삭제 확인 후 삭제를 진행하거나 취소
		if(confirm("해당 도서를 삭제합니다!!") == true)
			location.href="./deleteBook.jsp?id=" + id; // 삭제 페이지로 리다이렉트
		else
			return; // 취소하면 아무 일도 일어나지 않음
	}
</script>

<%
	// 'edit' 파라미터 값을 가져옵니다 (수정 또는 삭제 여부 판단)
	String edit = request.getParameter("edit");
%>

<body>
	<div class="container py-4">
		<%@ include file="menu.jsp" %> <!-- 메뉴 파일 포함 -->
		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold">도서 편집</h1>
            	<p class="col-md-8 fs-4">BookEditing</p>
			</div>
		</div>

		<%@ include file="dbconn.jsp" %> <!-- 데이터베이스 연결 파일 포함 -->

		<div class="row align-items-md-stretch text-center">
			<%
				// 데이터베이스에서 도서 목록을 조회합니다
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "SELECT * FROM book"; // 도서 테이블에서 모든 데이터를 가져옵니다
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				// 조회한 도서 데이터를 화면에 출력
				while(rs.next()){
			%>
			<div class="col-md-4">
				<div class="h-100 p-2 round-3">
					<!-- 도서 이미지 출력 -->
					<img src="./resources/images/<%=rs.getString("b_fileName") %>" style="width: 250; height: 350" />
	            	<h5><b><%=rs.getString("b_name") %></b></h5> <!-- 도서명 출력 -->
	            	<p><%=rs.getString("b_author") %> <!-- 저자명 출력 -->
	            	<br><%=rs.getString("b_publisher") %> | <%=rs.getString("b_releaseDate") %> <!-- 출판사와 출판일 출력 -->
	           		<p><%=rs.getString("b_description").substring(0, 60) %>... <!-- 도서 설명 출력 (60자까지) -->
	            	<p><%=rs.getString("b_unitPrice") %> 원 <!-- 도서 가격 출력 -->
	            	<p>
	            	<% if(edit.equals("update")){ %> <!-- edit 파라미터가 'update'일 경우 수정 버튼을 보여줌 -->
	            	<p><a href="./updateBook.jsp?id=<%=rs.getString("b_id") %>" class="btn btn-success" role = "button"> 수정 &raquo;</a>
	            	<% } else if(edit.equals("delete")){ %> <!-- edit 파라미터가 'delete'일 경우 삭제 버튼을 보여줌 -->
	            	<a href="#" onclick="deleteConfirm('<%=rs.getString("b_id") %>')" class="btn btn-danger" role="button">삭제 &raquo;</a>
	            	<% } %>
				</div>
			</div>
			<%
				} // while 문 끝
				// 자원 해제
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			%>
		</div>
		
		<%@ include file="footer.jsp" %> <!-- 푸터 파일 포함 -->
	</div>
</body>
</html>
