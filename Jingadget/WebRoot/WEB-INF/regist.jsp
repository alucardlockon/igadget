<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>用户注册 igadget-爱科技</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<script src="js/jquery-1.4.3.js">
</script>
	</head>

	<body>
		<div id="header" style="width: 100%">
			<a href="${pageContext.request.contextPath}/newsAction"><img  border="0" src="${pageContext.request.contextPath}/images/engadget.png" style="margin-left: 40" /></a>
			<img src="${pageContext.request.contextPath}/images/igadgettitle.png" />
			<div style="width: 10%; float: right">
				<a href="${pageContext.request.contextPath}/user/loginAction!tolog">登录</a>|
				<a href="${pageContext.request.contextPath}/user/registAction!toreg">注册</a>
			</div>
		</div>
		<hr color="#0099FF" />
		<div id="body" style="width: 100%;height: 70%">
		<form action="registAction" method="post">
				<table id="registtable" align="center">
					<tr>
					<td>用户名</td>
					<td><input name="user.name"/></td>
					</tr>
					<tr>
					<td>密码</td>
					<td><input type="password" name="user.password"/></td>
					</tr>
					<tr>
					<td>重新输入密码</td>
					<td><input type="password" name="repassword"/></td>
					</tr>
					<tr>
					<td>邮箱</td>
					<td><input name="user.email"></td>
					</tr>
					<tr>
					<td>验证码</td>
					<td><input name="verifycode"/></td>
					</tr>
					<tr>
					<td colspan="2"><input type="submit" value="注册"/><input type="reset" value="重置"/></td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>