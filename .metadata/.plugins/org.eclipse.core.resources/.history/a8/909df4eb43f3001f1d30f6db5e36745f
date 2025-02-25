<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, dto.*, dao.*" %>

<%
    String id = request.getParameter("id");
    if (id == null || id.trim().equals("")) {
        response.sendRedirect("books.jsp");
        return;
    }

    BookRepository dao = BookRepository.getInstance();

    Book book = dao.getBookById(id);
    if (book == null) {
        response.sendRedirect("exceptionNoBookId.jsp");
        return;
    }

    // 세션에서 장바구니 가져오기
    ArrayList<Book> cartList = (ArrayList<Book>)session.getAttribute("cartlist");
    if (cartList == null) {
        cartList = new ArrayList<Book>(); // 장바구니가 없으면 새로 생성
    }

    // Iterator를 사용하여 안전하게 리스트에서 항목을 제거
    Iterator<Book> iterator = cartList.iterator();
    while (iterator.hasNext()) {
        Book goodsQnt = iterator.next();
        if (goodsQnt.getBookId().equals(id)) {
            iterator.remove();  // 해당 도서 삭제
            break;
        }
    }

    // 변경된 장바구니를 세션에 저장
    session.setAttribute("cartlist", cartList);

    // 장바구니 페이지로 리다이렉트
    response.sendRedirect("cart.jsp");
%>
