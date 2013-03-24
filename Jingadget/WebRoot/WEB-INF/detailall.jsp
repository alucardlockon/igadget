<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>${oneNews.title}|igadget-爱科技</title>
		<link href="${pageContext.request.contextPath}/css/style.css"
			rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/js/jquery-1.4.3.js">
</script>
		<script src="${pageContext.request.contextPath}/js/detail.js">
</script>
	</head>

	<body>
		<div id="header" style="width: 100%">
			<a href="${pageContext.request.contextPath}/newsAction"><img
					border="0"
					src="${pageContext.request.contextPath}/images/engadget.png"
					style="margin-left: 40" />
			</a>
			<img src="${pageContext.request.contextPath}/images/igadgettitle.png" />
			<div style="width: 10%; float: right">
				<a href="${pageContext.request.contextPath}/user/loginAction!tolog">登录</a>|
				<a href="${pageContext.request.contextPath}/user/registAction!toreg">注册</a>
			</div>
		</div>
		<hr color="#0099FF" />
		<div id="body" style="width: 100%;">
			<div id="list"
				style="width: 65%; height: 70%; float: left; margin-left: 20">
				<s:action name="showAction!detail" namespace="/news"
					executeResult="true"></s:action>
			</div>
			<div id="rightlist" style="width: 29%; float: right">
				<s:action name="showAction!rightlist" namespace="/news"
					executeResult="true"></s:action>
			</div>
		</div>
	</body>
</html>
