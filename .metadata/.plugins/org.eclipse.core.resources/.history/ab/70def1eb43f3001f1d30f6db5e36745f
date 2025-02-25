<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.*, dao.*"%>

<%
    // 'cartId' 파라미터로 전달된 값 가져오기
    String id = request.getParameter("cartId");
    
    // cartId가 없으면 장바구니 페이지로 리다이렉트
    if(id == null || id.trim().equals("")){
        response.sendRedirect("cart.jsp");
        return;
    }
    
    // 세션 무효화 (장바구니 내용 초기화)
    session.invalidate();
    
    // 장바구니 페이지로 리다이렉트
    response.sendRedirect("cart.jsp");
%>
