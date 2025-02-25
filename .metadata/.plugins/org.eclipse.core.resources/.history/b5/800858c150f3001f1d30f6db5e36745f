<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" />
<title>Login</title>
</head>
<body>
	<div class="container py-4">
		<%@ include file="menu.jsp" %> <!-- 메뉴 바를 포함하는 부분 -->
		
		<!-- 페이지 상단의 헤더 -->
		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold">로그인</h1> <!-- 로그인 페이지 타이틀 -->
				<p class="col-md-8 fs-4">Login</p> <!-- 로그인 페이지 설명 -->
			</div>
		</div>
		
		<!-- 로그인 폼 -->
		<div class="row align-items-md-stretch text-center">
			<div class="row justify-content-center align-items-center">
				<div class="h-100 p-5 col-md-6">
					<h3>Please sign in</h3> <!-- 로그인 요청 메시지 -->
					
					<%
						// URL 파라미터 'error'가 존재하면 오류 메시지를 출력
						// 로그인 실패 시 사용자에게 아이디와 비밀번호를 확인하라는 경고 메시지 출력
						String error = request.getParameter("error");
						if(error != null){
							out.println("<div class='alert alert-danger'>");
							out.println("아이디와 비밀번호를 확인해주세요."); // 로그인 실패 시 안내 메시지
							out.println("</div>");
						}
					%>
					
					<!-- 로그인 폼 -->
					<form action="j_security_check" class="form-signin" method="post">
						<div class="form-floating mb-3 row">
							<input type="text" class="form-control" name='j_username' required autofocus> <!-- ID 입력 필드 -->
							<label for="floatingInput">ID</label> <!-- ID 라벨 -->
						</div>
						<div class="form-floating mb-3 row">
							<input type="password" class="form-control" name='j_password'> <!-- Password 입력 필드 -->
							<label for="floatingInput">Password</label> <!-- Password 라벨 -->
						</div>
						<!-- 로그인 버튼 -->
						<button class="btn btn-lg btn-success" type="submit">로그인</button>
					</form>
				</div>
			</div>
		</div>

		<%@ include file="footer.jsp" %> <!-- 페이지 하단의 푸터 포함 -->
	</div>
</body>
</html>
