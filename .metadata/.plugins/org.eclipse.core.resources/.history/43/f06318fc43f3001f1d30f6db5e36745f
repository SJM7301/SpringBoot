<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" />
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>도서 등록</title>
</head>
<body>
	<!-- 페이지에서 사용자가 선택한 언어에 맞게 locale 설정 -->
	<fmt:setLocale value='<%=request.getParameter("language") %>' />
	<fmt:bundle basename="bundle.message">
	<div class="container py-4">
		<!-- 메뉴 JSP 포함 -->
		<%@ include file="menu.jsp"%>
		
		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-5">
				<!-- 도서 등록 페이지 제목 -->
				<h1 class="display-5 fw-bold"><fmt:message key="title" /></h1>
				<p class="col-md-8 fs-4">Book Addition</p>
			</div>
		</div>

		<div class="row align-items-md-stretch">
			<div class="text-end">
				<!-- 언어 선택 링크 -->
				<a href="?language=ko">Korea</a> | <a href="?language=en">English</a>
				<!-- 로그아웃 버튼 -->
				<a href="logout.jsp" class="btn btn-sm btn-success pull right">logout</a>
			</div>
			<!-- 도서 등록 폼 -->
			<form name="newBook" action="./processAddBook.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
				<!-- 도서 ID 입력 필드 -->
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="bookId" /></label>
					<div class="col-sm-3">
						<input type="text" id="bookId" name="bookId" class="form-control">
					</div>
				</div>
				<!-- 도서명 입력 필드 -->
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="name" /></label>
					<div class="col-sm-3">
						<input type="text" id="name" name="name" class="form-control">
					</div>
				</div>
				<!-- 도서 가격 입력 필드 -->
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="unitPrice" /></label>
					<div class="col-sm-3">
						<input type="text" id="unitPrice" name="unitPrice" class="form-control">
					</div>
				</div>
				<!-- 저자 입력 필드 -->
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="author" /></label>
					<div class="col-sm-3">
						<input type="text" name="author" class="form-control">
					</div>
				</div>
				<!-- 출판사 입력 필드 -->
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="publisher" /></label>
					<div class="col-sm-3">
						<input type="text" name="publisher" class="form-control">
					</div>
				</div>
				<!-- 출판일 입력 필드 -->
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="releaseDate" /></label>
					<div class="col-sm-3">
						<input type="text" name="releaseDate" class="form-control">
					</div>
				</div>
				
				<!-- 도서 설명 입력 필드 -->
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="description" /></label>
					<div class="col-sm-5">
						<textarea name="description" id="description" rows="2" cols="50" class="form-control" placeholder="100자 이상 적어주세요."></textarea>
					</div>
				</div>
				<!-- 카테고리 입력 필드 -->
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="category" /></label>
					<div class="col-sm-3">
						<input type="text" name="category" class="form-control">
					</div>
				</div>
				<!-- 재고 입력 필드 -->
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="unitsInStock" /></label>
					<div class="col-sm-3">
						<input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
					</div>
				</div>
				<!-- 상태 입력 필드 (새 책, 중고 책, 전자책 선택) -->
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="condition" /></label>
					<div class="col-sm-5">
						<input type="radio" name="condition" value="New"> <fmt:message key="condition_New" />
						<input type="radio" name="condition" value="Old"> <fmt:message key="condition_Old" />
						<input type="radio" name="condition" value="EBook"> <fmt:message key="condition_Ebook" />
					</div>
				</div>
				<!-- 도서 이미지 업로드 필드 -->
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="bookImage" /></label>
					<div class="col-sm-5">
						<input type="file" name="BookImage" class="form-control">
					</div>
				</div>
				<!-- 도서 등록 버튼 -->
				<div class="mb-3 row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="button" class="btn btn-primary" value="<fmt:message key="button" />" onclick="CheckAddBook()">
					</div>
				</div>
			</form>
		</div>
		<!-- 페이지 하단에 footer.jsp 포함 -->
		<jsp:include page="footer.jsp" />
	</div>
	</fmt:bundle>
</body>
</html>
