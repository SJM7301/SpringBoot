<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<% 
    String sessionId = (String)session.getAttribute("sessionId"); // 세션에서 sessionId를 가져옴
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- 헤더 시작 -->
    <header class="pb-3 mb-4 border-bottom">
        <div class="container">
            <!-- 내비게이션 바 시작 -->
            <div class="d-flex flex-wrap align-items-center justify-content-center justrify-content-lg-start">
                <!-- 홈으로 돌아가는 링크 -->
                <a href="<c:url value='/welcome.jsp'/>" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                    <!-- 아이콘 (집 모양) -->
                    <svg width="32" height="32" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
                        <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5Z"/>
                        <path d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6Z"/>
                    </svg>
                    <span class="fs-4">Home</span>
                </a>
                
                <!-- 내비게이션 항목 -->
                <ul class="nav nav-pills">
                    <!-- 세션이 없을 경우 로그인 및 회원 가입 링크 표시 -->
                    <c:choose>
                        <c:when test="${empty sessionId}">
                            <li class="nav-item"><a class="nav-link" href="<c:url value='/member/loginMember.jsp' />">로그인</a></li>
                            <li class="nav-item"><a class="nav-link" href="<c:url value='/member/addMember.jsp' />">회원 가입</a></li>
                        </c:when>
                        
                        <c:otherwise>
                        <!-- 세션이 있을 경우 세션 사용자 정보 및 로그아웃, 회원 수정 링크 표시 -->
                            <li style="padding-top: 7px; color: white">[<%=sessionId %>님]</li> <!-- 세션 사용자 이름 표시 -->
                            <li class="nav-item"><a class="nav-link" href="<c:url value='/member/logoutMember.jsp' />">로그아웃</a></li>
                            <li class="nav-item"><a class="nav-link" href="<c:url value='/member/updateMember.jsp' />">회원 수정</a></li>
                        </c:otherwise>
                    </c:choose>
                    
                    <!-- 도서 관련 메뉴 -->
                    <li class="nav-item"><a href="${pageContext.servletContext.contextPath}/books.jsp" class="nav-link">도서 목록</a></li>
                    <li class="nav-item"><a href="<c:url value='/addBook.jsp'/>" class="nav-link">도서 등록</a></li>
                    <li class="nav-item"><a href="<c:url value='/editBook.jsp?edit=update'/>" class="nav-link">도서 수정</a></li>
                    <li class="nav-item"><a href="<c:url value='/editBook.jsp?edit=delete'/>" class="nav-link">도서 삭제</a></li>
                </ul>
            </div>
        </div>
    </header>
</body>
</html>
