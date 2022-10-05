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
	<div align = "center" style = "margin-top: 50px">
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">Tên Đăng Nhập</th>
		      <th scope="col">Mật khẩu</th>
		      <th scope="col">quyền</th>
		    </tr>
		  </thead>
		  
		  <tbody>
		   <c:forEach items = "${account}" var = "ac">
		   		<tr>
		   			<td>${ac.getTenDangNhap()}</td>
			      <td>${ac.getMatKhau() }</td>
			      <td>${ac.getQuyen() }</td>
		   		</tr>
		   	</c:forEach>
		  </tbody>
		  
</table>
			
	</div>
</body>
</html>