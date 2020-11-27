<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>쇼핑몰 관리 프로그램</title>
	<link rel="stylesheet" type="text/css" href="css/css.css">
</head>
<body>
	<%@include file="common/header.jsp" %>
	<%@include file="common/nav.jsp" %>
	
	<section>
		<%
		String section = request.getParameter("section") != null ? request.getParameter("section") : "";
		
		switch(section) {
		case "registration_sale":
			%> <%@include file="section/registration_sale.jsp" %> <%
			break;
		case "lookup_sale_by_product":
			%> <%@include file="section/lookup_sale_by_product.jsp" %> <%
			break;
		case "lookup_sale":
			%> <%@include file="section/lookup_sale.jsp" %> <%
			break;
		case "lookup_sale_by_category":
			%> <%@include file="section/lookup_sale_by_category.jsp" %> <%
			break;
			
		default:
			%>
			<h3>쇼핑몰 관리 프로그램</h3>
			<p><b>쇼핑몰을 관리하기 위한 프로그램이다</b></p>
			<a>1.상품테이블, 카테고리 테이블, 매출정보 테이블을 생성한다.</a></br>
			<a>2.판매 등록, 통합 매출 내역 조회, 상품별 매출현황, 카테고리별 매출현황 조회 페이지를 작성한다.</a></br>
			<a>3.올바르게 구현되었는지 확인한다.</a></br>
			<%	
			break;
			
		}
		
		%>
	</section>
	<%@include file="common/footer.jsp" %>
</body>
</html>