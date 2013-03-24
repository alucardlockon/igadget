<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>验证用户</title>
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
		</div>
	</body>
</html>
