<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.net.*, dto.*, dao.*" %>

<%
    // 요청된 문자 인코딩을 UTF-8로 설정
    request.setCharacterEncoding("UTF-8");
    
    // 장바구니 관련 변수 설정
    String cartId = session.getId();
    
    // 배송 관련 변수들 초기화
    String shipping_cartId = "";
    String shipping_name = "";
    String shipping_shippingDate = "";
    String shipping_country = "";
    String shipping_zipCode = "";
    String shipping_addressName = "";
    
    // 요청에서 쿠키 정보를 가져와서 배송 정보를 설정
    Cookie[] cookies = request.getCookies();
    
    if(config != null){
        for(int i = 0; i < cookies.length; i++){
            Cookie thisCookie = cookies[i];
            String n = thisCookie.getName();
            
            // 각 쿠키 값들을 읽어서 배송 정보에 저장
            if(n.equals("Shipping_cartId")){
                shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
            }
            if(n.equals("Shipping_name")){
                shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
            }
            if(n.equals("Shipping_shippingDate")){
                shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
            }
            if(n.equals("Shipping_country")){
                shipping_country = URLDecoder.decode((thisCookie.getValue()), "utf-8");
            }
            if(n.equals("Shipping_zipCode")){
                shipping_zipCode = URLDecoder.decode((thisCookie.getValue()), "utf-8");
            }
            if(n.equals("Shipping_addressName")){
                shipping_addressName = URLDecoder.decode((thisCookie.getValue()), "utf-8");
            }
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 정보</title>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container py-4">
        <%@ include file="menu.jsp" %> <!-- 메뉴 포함 -->
        
        <div class="p-5 mb-4 bg-body-tertiary rounded-3">
            <div class="container-fluid py-5">
                <h1 class="display-5 fw-bold">주문 정보</h1>
                <p class="col-md-8 fs-4">Order Info</p>
            </div>
        </div>
        
        <div class="row align-items-md-stretch alert alert-info">
            <h1>영수증</h1>
        </div>
        
        <!-- 배송 정보 출력 -->
        <div class="row justify-content-between">
            <div class="col-4" align="left">
                <strong>배송 주소</strong><br>
                성명 : <%out.println(shipping_name); %><br>
                우편번호 : <%out.println(shipping_zipCode); %><br>
                우편번호 : <%out.println(shipping_addressName); %>(<%out.println(shipping_country); %>)<br>
            </div>
            
            <div class="col-4" align="right">
                <p><em>배송일: <%out.println(shipping_shippingDate); %></em>
            </div>
        </div>
        
        <!-- 주문 상세 테이블 -->
        <div class="py-5">
            <table class="table table-hover">
                <tr>
                    <th class="text-center">도서</th>
                    <th class="text-center">수량</th>
                    <th class="text-center">가격</th>
                    <th class="text-center">소계</th>
                </tr>
                
                <% 
                    // 총액 계산을 위한 변수 설정
                    int sum = 0;
                    
                    // 장바구니 정보 가져오기
                    ArrayList<Book> cartList = (ArrayList<Book>)session.getAttribute("cartlist");
                    if(cartList == null){
                        cartList = new ArrayList<Book>();
                    }
                    
                    // 장바구니에서 도서 하나씩 출력
                    for(int i = 0; i < cartList.size(); i++){
                        Book book = cartList.get(i);
                        int total = book.getUnitPrice() * book.getQuantity();
                        sum = sum + total;
                %>
                
                <tr>
                    <td class="text-center"><em><%=book.getName() %></em></td>
                    <td class="text-center"><%=book.getQuantity() %></td>
                    <td class="text-center"><%=book.getUnitPrice() %>원</td>
                    <td class="text-center"><%=total %>원</td>
                </tr>
                
                <% 
                    }
                %>
                
                <tr>
                    <td> </td>
                    <td> </td>
                    <td class="text-right"><strong>총액: </strong></td>
                    <td class="text-center text-danger"><strong><%=sum %>원</strong> </td>
                </tr>
            </table>
            
            <!-- 이전 페이지, 주문 완료, 취소 버튼 링크 -->
            <a href="./shippingInfo.jsp?cartId=<%=shipping_cartId %>"
            class="btn btn-secondary" role="button"> 이전 </a>
            
            <a href="./thankCustomer.jsp" class="btn btn-success" role="button"> 주문 완료 </a>

            <a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
        </div>
        <%@ include file="footer.jsp" %> <!-- 푸터 포함 -->
    </div>
</body>
</html>
