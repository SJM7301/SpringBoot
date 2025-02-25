<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" />
<title>페이지 오류</title>
</head>
<body>
	<jsp:include page="menu.jsp" /> <!-- 메뉴 JSP 파일을 포함시킴 -->
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h2> <!-- 페이지를 찾을 수 없다는 경고 메시지 표시 -->
		</div>
	</div>
	
	<div class="container">
		<p><%=request.getRequestURL() %></p> <!-- 요청 URL을 출력하여 사용자에게 어떤 URL을 요청했는지 표시 -->
		<p> <a href="books.jsp" class="btn btn-secondary"> 도서 목록&raquo;</a> <!-- 도서 목록 페이지로 돌아갈 수 있는 버튼을 추가 -->
	</div>
</body>
</html>
