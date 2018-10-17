<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/menu.css">
<div id="fixedmenu">
<ul>
<li><a href="${path}">Home</a></li>
<li><a href="${path}/email/write.do">GET</a></li>
<li><a href="${path}/board/list.do">DELIVERY</a></li>
</ul>
<div style="text-align: right;">
	<c:choose>
		<c:when test="${sessionScope.userid == null }">
			<li><a href="${path}/member/login.do">로그인</a></li>
			<li><a href="${path}/member/join.do">회원가입</a></li>
		</c:when>
		<c:otherwise>
			<li style="color:white;">${sessionScope.userid} 님<br> <a
				href="${path}/member/logout.do">LOGOUT</a></li>
		</c:otherwise>
	</c:choose>
</div>
</div>