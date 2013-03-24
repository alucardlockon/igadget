<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<form action="${pageContext.request.contextPath}/news/newsAction!search"
	name="search">
	<input type="text" id="keyword" name="keyword" value="搜索"
		onclick="this.value=''" />
	<input type="image"
		src="${pageContext.request.contextPath}/images/search.jpg"
		onclick="return document.search.submit()"
		style="width: 15%; padding-top: 15" />

</form>
<img src="${pageContext.request.contextPath}/images/find5.jpg" />



<br />
<br />
最新新闻:
<br />
<br />
<s:iterator value="news" var="onenews">
	<div>
		<a
			href="${pageContext.request.contextPath}/news/newsAction!detail?oneNews.id=${id}"
			style="font-size: small">${title}</a>
		<br />
		<br />
	</div>
</s:iterator>
最多评论:
<br />
<br />
<s:iterator value="newscom" var="onenews">
	<div>
		<a
			href="${pageContext.request.contextPath}/news/newsAction!detail?oneNews.id=${id}"
			style="font-size: small">${title}</a>(${comcount})
		<br />
		<br />
	</div>
</s:iterator>
分享到:
<br />
<br />
<!-- JiaThis Button BEGIN -->
<div id="jiathis_style_32x32">
	<a class="jiathis_button_qzone"></a>
	<a class="jiathis_button_tsina"></a>
	<a class="jiathis_button_tqq"></a>
	<a class="jiathis_button_renren"></a>
	<a class="jiathis_button_kaixin001"></a>
	<a href="http://www.jiathis.com/share"
		class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a>
	<a class="jiathis_counter_style"></a>
</div>
<script type="text/javascript"
	src="http://v3.jiathis.com/code/jia.js?uid=1343356761523153"
	charset="utf-8">
</script>
<!-- JiaThis Button END -->
<a href="http://psnprofiles.com/madoka_psv"><img src="http://card.psnprofiles.com/1/madoka_psv.png" border="0" width="350"></a>
<iframe width="100%" height="550" class="share_self"  frameborder="0" scrolling="no" src="http://widget.weibo.com/weiboshow/index.php?language=&width=0&height=550&fansRow=2&ptype=1&speed=300&skin=9&isTitle=1&noborder=1&isWeibo=1&isFans=1&uid=2272736410&verifier=71597fe1&dpc=1"></iframe>
