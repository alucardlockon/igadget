<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>${oneNews.title}|igadget-爱科技</title>
		<link href="${pageContext.request.contextPath}/css/style.css"
			rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/js/jquery-1.4.3.js">
</script>
	</head>

	<body>
		<div id="header" style="width: 100%">
			<a href="${pageContext.request.contextPath}/newsAction"><img  border="0"
					src="${pageContext.request.contextPath}/images/engadget.png"
					style="margin-left: 40" /> </a>
			<img src="${pageContext.request.contextPath}/images/igadgettitle.png" />
			<div style="width: 10%; float: right">
				<a href="${pageContext.request.contextPath}/user/loginAction!tolog">登录</a>|
				<a href="${pageContext.request.contextPath}/user/registAction!toreg">注册</a>
			</div>
		</div>
		<hr color="#0099FF" />
		<div id="body" style="width: 100%; height: 70%">
			<div id="list"
				style="width: 65%; height: 70%; float: left; margin-left: 20">
				<c:if test="${fn:length(serachs)>0}" var="rs">
					<s:action name="showAction!serach" namespace="/news"
						executeResult="true"></s:action>
				</c:if>
				<c:if test="${!rs}">
					<div align="center" style="margin-top: 30">
						<img src="${pageContext.request.contextPath}/images/sorry.jpg"
							style="width: 30%; height: 60%" />
						<h2>
							Sorry~没找到新闻
						</h2>
						<a href="${pageContext.request.contextPath}/newsAction">返回主页</a>
					</div>
				</c:if>
			</div>
			<div id="rightlist" style="width: 29%; float: right">
				<s:action name="showAction!rightlist" namespace="/news"
					executeResult="true"></s:action>
			</div>
		</div>
	</body>
</html>
