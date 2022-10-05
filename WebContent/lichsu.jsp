<%@page import="java.util.ArrayList"%>
<%@page import="bean.LichSuMuaHangBean"%>
<%@page import="java.util.List"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>


	<%	DecimalFormat formatter = new DecimalFormat("###,###,###");
		List<LichSuMuaHangBean> list = null;
		if(request.getAttribute("lichsumua")!=null){
			list =(ArrayList<LichSuMuaHangBean>) request.getAttribute("lichsumua");
		}
	%>
	<div
		style="cursor: pointer; width: auto; border-bottom: #d6d6d6 1px dotted;">
		<h1>LỊCH SỬ MUA HÀNG</h1>
	</div>
	<div
		style="cursor: pointer; width: auto; border-bottom: #d6d6d6 1px dotted;">
	<%if(list!=null){
		for(LichSuMuaHangBean lsmh : list){%>
			
	
		<table style="padding-top: 1px;border-bottom: #d6d6d6 1px dotted;">
			<tbody>
				<tr >
					<td valign="top" width="50px" height="60px" style="padding: 10px;"><img
						src="<%=lsmh.getAnhsach() %>" style="width: 110px; height: 130px">
					</td>
					<td valign="top" style="border-left: #d6d6d6 1px dotted;padding: 5px;width: 520px">
						<span style="color: black;">Mã hóa đơn : <%=lsmh.getMaHD() %></b></span><br>
						<span style="color: black;">Mã chi tiết hóa đơn : <%=lsmh.getMaCTHD()%> </span><br>
						<span style="color: black;"><%=lsmh.getTensach() %></b>
							<%=lsmh.getTacgia() %> </span> <br>
							Giá: <span><%=lsmh.getGiasach() %> $ </span></b><br>
						<span style="color: black;">Số lượng : <%=lsmh.getSoluongmua() %></b></span><br>
						<span style="color: black;">Ngày mua: <%=lsmh.getNgaymua() %></b></span><br>		
					</td>
				</tr>
				<tr>
					<td colspan="2"></td>
				</tr>
			</tbody>
		</table>
		<%	}%>
	</div>
		
	<%}else{ %>
		<div style="text-align: center; margin-bottom: 130px; margin-top: 130px">
			<span style="margin-top: 180px; font-weight: 900; font-size: 25px; color: #d7d7c1">
			CHƯA CÓ TÀI KHOẢN NÈ ^-^
			</span>
		</div>
	<%}
	%>
</body>
</html>