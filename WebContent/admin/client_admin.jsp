<%@page import="fashionclub.db.Client"%>
<%@page import="java.util.Iterator"%>
<%@page import="fashionclub.db.DaoClient"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/main.css" />
</head>
<body>
<div id="top">
<a href="index.jsp">
	<span style="font-size: 40px">FashionClub</span>
	</a>
	<div>
		<a href="#">Login</a>
		<a href="register_yourstyle.jsp">GetStart</a>
	</div>
</div>
<hr/>
<div id="center">
<h1>当前已注册客户列表</h1>
<div style="text-align: right"><a href="#">+新增</a></div>
<hr/>
<table style="border:1px solid;margin: 0 auto; width=100%;">
<th width=80px>编号</th>
<th width=180px>帐号</th>
<th width=280px>Email</th>
<th width=180px>手机</th>
<%
DaoClient daoclient = new DaoClient();
List list = daoclient.getAllClient();
for(int i=0; i<list.size(); i++)
{	
	out.print("<tr>");
	Client client = (Client)list.get(i);
	out.print(String.format("<td>%d</td>",client.getId()));
	out.print(String.format("<td>%s</td>",client.getAccount()));
	out.print(String.format("<td>%s</td>",client.getEmail()));
	out.print(String.format("<td>%s</td>",client.getMobile()));
	out.print("</td>");
	%>
	<td><a href="#">删除</a><a href="#">修改</a></td>
	<%
}
%>
</table>
</div>
<div class="foot" style="text-align: center;display:block;">
	<hr/>
	<p>About us</p>
</div>
</body>
</html>