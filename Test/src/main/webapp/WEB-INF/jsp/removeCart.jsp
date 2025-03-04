<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, org.big.dto.*, org.big.dao.*" %>
<%
    String id = request.getParameter("id");
    if (id == null || id.trim().equals("")) {
        response.sendRedirect("/bookmarket/books.do");
        return;
    }

    // 세션에서 장바구니 가져오기
    ArrayList<Book>cartList = (ArrayList<Book>)session.getAttribute("cartlist");
	Book goodsQnt = new Book();
	
	for(int i = 0; i< cartList.size(); i++) {
		goodsQnt = cartList.get(i);
		if(goodsQnt.getBookId().equals(id)){
			cartList.remove(goodsQnt);
		}
	}
	
	response.sendRedirect("/bookmarket/cart.do");
%>