<%@page import="java.lang.reflect.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, dto.*, dao.*" %>
<%@ include file="dbconn.jsp" %> <!-- DB 연결 -->
<!DOCTYPE html>
<html>
<head>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" />
<meta charset="UTF-8">
<title>장바구니</title>
</head>

<%
    // 세션 ID를 가져옴. 장바구니는 세션 기반으로 관리되므로
    String cartId = session.getId();
%>

<body>
    <div class="container py-4">
        <!-- 메뉴를 포함하는 파일을 가져옵니다 -->
        <%@ include file="menu.jsp" %>
        
        <div class="p-5 mb-4 bg-body-tertiary rounded-3">
            <div class="container-fluid py-5">
                <h1 class="display-5 fw-bold">장바구니</h1>
                <p class="col-md-8 fs-4">Cart</p>
            </div>
        </div>
        
        <div class="row align-items-md-stretch">
            <div class="row">
                <!-- 장바구니 삭제와 주문하기 버튼 -->
                <table width="100%">
                    <tr>
                        <!-- 장바구니 삭제하기 링크 -->
                        <td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId %>" class="btn btn-danger">삭제하기</a></td>
                        <!-- 주문하기 링크 -->
                        <td align="right"><a href="./shippingInfo.jsp?cartId=<%=cartId %>" class="btn btn-success">주문하기</a></td>
                    </tr>
                </table>
            </div>
            
            <div style="padding-top: 50px">
                <!-- 장바구니 테이블 -->
                <table class="table table-hover">
                    <tr>
                        <th>도서</th>
                        <th>가격</th>
                        <th>수량</th>
                        <th>소계</th>
                        <th>비고</th>
                    </tr>
                    
                    <%
                        // 총액을 계산하기 위한 변수
                        int sum = 0;
                        // 세션에서 장바구니 리스트를 가져옴
                        ArrayList<Book> cartList = (ArrayList<Book>)session.getAttribute("cartlist");
                        if(cartList == null){
                            // 장바구니가 없다면 새로 생성
                            cartList = new ArrayList<Book>();
                        }
                        // 장바구니에 담긴 도서 목록을 하나씩 출력
                        for(int i = 0; i < cartList.size(); i++){ 
                            Book book = cartList.get(i);
                            String bookId = book.getBookId();
                            
                            if(bookId != null && !bookId.equals("")){
                            	String sql = "SELECT * FROM book WHERE b_id=?";
                            	PreparedStatement pstmt = conn.prepareStatement(sql);
                            	pstmt.setString(1, bookId);
                            	ResultSet rs = pstmt.executeQuery();
                            	
                            	if(rs.next()){
	                            	int total = rs.getInt("b_unitPrice") * book.getQuantity();
	                            	sum += total; // 총액 계산
                    %>
                    
                    <!-- 장바구니에 담긴 도서 정보 출력 -->
                    <tr>
                        <td><%=book.getBookId() %> - <%=book.getName() %></td>
                        <td><%=book.getUnitPrice() %></td>
                        <td><%=book.getQuantity() %></td>
                        <td><%=total %></td>
                        <!-- 도서 삭제 링크 -->
                        <td><a href="./removeCart.jsp?id=<%=book.getBookId() %>" class="badge text-bg-danger">삭제</a></td>
                    </tr>
                    
                    <%
                            	}
                            }
                        }
                    %>
                    
                    <!-- 총액을 표시 -->
                    <tr>
                        <th></th>
                        <th></th>
                        <th>총액</th>
                        <th><%=sum %></th>
                        <th></th>
                    </tr>
                </table>
                <!-- 쇼핑 계속하기 버튼 -->
                <a href="./books.jsp" class="btn btn-secondary">&laquo; 쇼핑 계속하기</a>
            </div>
        </div>
        
        <!-- 푸터 포함 -->
        <jsp:include page="footer.jsp" />
    </div>
</body>
</html>
