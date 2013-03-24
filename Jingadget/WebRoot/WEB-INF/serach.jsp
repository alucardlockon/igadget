<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<s:iterator value="serachs" var="onenews">
	<div>
		<table style="width: 100%; height: 100%; margin-left: 20">
			<tr>
				<td>
					<h2>
						<a href="news/newsAction!detail?oneNews.id=${id}" target="_self">${title}</a>
					</h2>
				</td>
			</tr>
			<tr>
				<td align="center">
					<img src="${pageContext.request.contextPath}/images/${images.uri}" />
				</td>
			</tr>
			<tr>
				<td>
					${minicontent}
				</td>
			</tr>
			<tr>
				<td align="right" style="font: lighter">
					<a href="#">评论（0）</a>
					<hr color="#84C1FF" />
				</td>
			</tr>
		</table>
	</div>
</s:iterator>
