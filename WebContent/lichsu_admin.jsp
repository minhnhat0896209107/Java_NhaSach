<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	
	<div
		style="cursor: pointer; width: auto; border-bottom: #d6d6d6 1px dotted;">
		<h1>LỊCH SỬ KHÁCH MUA</h1>
	</div>
	<c:choose>
		<c:when test="${lichsuadmin != null }">
				<form action = "xacnhanAdmin" method = "post">
				<c:forEach items = "${lichsuadmin}" var = "lsmh">
				<div style = "margin-left: 500px">
					<img src="${lsmh.getAnhsach()}" style="width: 200px; height: 150px"> <br>
						
					Tên sách: ${lsmh.getTensach() } <br>
										
					Giá: ${lsmh.getGiasach() } <br>
					Số lượng : ${lsmh.getSoluongmua()} <br>
					<br>
					<a class = "btn btn-primary"  name = "xacnhan" href = "xacnhanAdmin?mct=${lsmh.getMaCTHD()}" style = " margin-left : 500px"> Xác nhận</a>
				</div>
				
				</c:forEach>
				<input name="xacnhanall" type="submit" value="Xác nhận toàn bộ"
											class="btn-primary" style = "margin-top: 50px; margin-left : 500px">
				</form>
		</c:when>
		<c:otherwise>
			<div style= "margin-top: 200px; margin-left: 200px">
			
				<h1> LỊCH SỬ RỖNG</h1>
			</div>
		</c:otherwise>
	</c:choose>
	

</body>
</html>