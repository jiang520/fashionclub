
<%@page import="fashionclub.db.DaoClient"%>
<%@page import="fashionclub.db.Client"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>注册信息</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
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
<%
	String strAccount = request.getParameter("account");
	String strPass=request.getParameter("pass");
	String strEmail=request.getParameter("email");
	String strMobile = request.getParameter("mobile");
	boolean bValid = false;
	//校验帐号密码
	do {
		if (strAccount.length() < 5 || strAccount.length() > 40)
			break;
		if (strPass.length() < 6 || strPass.length() > 20)
			break;
		if (strEmail.length() < 3 || strEmail.contains("@"))
			break;
		bValid = true;
		break;
	} while (false);
	if(!bValid){
		%>
		<h1>抱歉,您输入的信息有误, 请返回重新注册</h1>
		<br/>
		<%
		out.print("<a href='register_userinfo.jsp'>点击返回注册页面</a><br/>");
	}
	else{
		Client client = new Client();
		client.setAccount(strAccount);
		client.setPass(strPass);
		client.setEmail(strEmail);
		client.setMobile(strMobile);
		if(DaoClient.add(client))
		{
			out.print("注册成功!欢迎使用fashionclub");
		}
		else
		{
			out.print("注册失败!请重试!");		
		}
	}	
%>
</div>
<div id="foot">
<div id="foot">
	<hr/>
	<p>About us</p>
</div>
</div>
</body>
</html>