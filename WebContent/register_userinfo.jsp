<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>注册即将完成....</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
</head>
<body>
<div id="top">
	<a href="index.jsp">
	<span style="font-size: 40px">FashionClub</span>
	</a>	
	<div>
		<a href="#">Login</a>
		<a href="#">Sign in</a>
	</div>
<hr/>
</div>

<div id="center">
<h1>即将完成注册...</h1>
<form action="doregister.jsp" method="post" style="padding-left:30%;padding-right:30%;">
<h2>必填注册信息</h2>
	<table style="magin:0 auto; width:450px;text-align: left">
		<tr>
			<td><label>帐 号:</label></td>
			<td><input type="text" name="account"/></td>
			<td>5~40位</td>
		</tr>
		<tr><td>密码:</td>
			<td><input type="password" name="pass"/></td>
			<td>需输入6~20位</td>
		</tr>
		<tr><td><label>邮 箱:</label></td>
			<td><input type="text" name="email"/></td>			
			<td>此邮箱用于联系和找回密码</td>
		</tr>
		<tr><td></td>			
	</table>
	<h3>服装信息:您可以在以后完善此信息</h3>
	<table>
	<tr><td><label>身高(cm):</label></td><td><input type="text"/></td><td></td></tr>
	<tr><td><label>体重(kg):</label></td><td><input type="text"/></td><td></td></tr>
	<tr><td><label>肩宽(cm):</label></td><td><input type="text"/></td><td></td></tr>
	<tr><td><label>腰围(cm):</label></td><td><input type="text"/></td><td></td></tr>
	<tr><td><label>臀围(cm):</label></td><td><input type="text"/></td><td></td></tr>
	</table>
	<hr/>	
	<div></div><input type="submit" value="注册"  maxlength="40px"/></div>
</form>	
</div>
<div class="foot" style="text-align: center;display:block;">
	<hr/>
	<p>About us</p>
</div>
</body>
</html>