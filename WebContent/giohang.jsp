<%@page import="bean.KhachHangBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.GioHangBean"%>
<%@page import="java.util.List"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
</head>
<body>
<%
		Long checkdangky = (long)0;
		if(request.getAttribute("ktrathanhtoan") !=null){
			checkdangky = (long)request.getAttribute("ktrathanhtoan");
		 if(checkdangky == 0) {%>
				<script>
					alert('Đăng nhập thất bại');
				</script>
			<%}else if(checkdangky == 2) {%>
				<script>
					alert('Chưa nhập tài khoản nè ^_^');
				</script>
			<%}else if(checkdangky == 3){%>
				<script>
					alert('Bạn chưa mua sp nào cả nè ^_^');
				</script>
			<%}
		}
	%>
	
	
		<% DecimalFormat formatter = new DecimalFormat("###,###,###"); %>
	<%	
		List<GioHangBean> listgiohang = new ArrayList<>();
		Long tongtien =(long) 0;
		if(request.getAttribute("listgh")!=null) {
			listgiohang = (ArrayList<GioHangBean>)request.getAttribute("listgh");
			tongtien = (long)request.getAttribute("tongtien");
		}
		if(listgiohang.size()>0){
	%>
	<h1> GIỎ HÀNG</h1>
	<div
		style="cursor: pointer; width: auto; border-bottom: #d6d6d6 1px dotted; margin-bottom:10px">
		
		<%
		for (GioHangBean gh : listgiohang) {
		%>
		<table style="padding: 10px; margin-left: 100px">
			<tbody>
				<tr >
					<td valign="top" width="50px" height="60px" style= "margin-top: 10px"><img
						src="<%=gh.getImage() %>" style="width: 150px; height: 160px">
					</td>
					<td valign="top"><span style="color: black; margin-left: 10px"> <%=gh.getTenSach()%>
					 <br> <div style= "margin-left: 10px"> Giá:  <span><%= formatter.format(gh.getGia() * gh.getSlMua())+ " $"%></span></div>
					</br>
					<div style= "margin-left: 10px"><form action="capnhapgiohang?masach=<%=gh.getMaSach()%>" method="post">
						<input  name="soluong" type="text" style="width: 25px" value="<%=gh.getSlMua() %>">
						&nbsp; 
						<input type="submit" value="Cập nhật" name="update">
						<input type="submit" value="Trả lại" name="delete">
					
					</form>
					</div>
					</td>
					
				</tr>
				<div style= "height:10px "></div>
				<tr>
					<td colspan="2"></td>
				</tr>
			</tbody>
		</table>
		
		<%
		}
		%>

	</div >

		<div valign="top"><span style="font-weight: bold; color: black; margin-left:100px; margin-top:50px">Tổng
				cộng: <%=formatter.format(tongtien)+" $"%>
		</span></div>

	<%
	} else {
	%>
	<div
		style="text-align: center; margin-bottom: 130px; margin-top: 130px">
		<h1> Giỏ hàng trống</h1>
	</div>
	<%
	}
	%>
	<div
		style="cursor: pointer; width: auto; border-bottom: #d6d6d6 1px dotted;">
	</div>
	<div style="padding-left: 10px; margin-top: 20px; text-align: center;">
		<a class="btn btn-info" href="giohang?xoaall=oke" role="button">Trả sách
			hết</a> <a class="btn btn-warning" href="Htsach"
			role="button">Trang chủ</a> <a class="btn btn-success"
			href="thanhtoan" role="button">Xác nhận đặt mua sách</a>
	</div>
	
</body>
</html>