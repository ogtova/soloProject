<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/login.css">
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/noscript.css" />
<script>
	$(function() {
		$("#btnLogin").click(function() {
			var userid = $("#userid").val(); 
			var passwd = $("#passwd").val();
			if (userid == "") {
				alert("아이디를 입력하세요.");
				$("#userid").focus(); 
				return; 
			}
			if (passwd == "") {
				alert("비밀번호를 입력하세요.");
				$("#passwd").focus();
				return;
			}
			document.form1.action = "${path}/member/login_check.do";
			document.form1.submit();
		});
	});
</script>
</head>
<body>
	<%@ include file="../include/menu.jsp"%>
			<article class="container box style3" style="text-align:center;">
				<h2 id="loginH2">로그인</h2><br />
				<form name="form1" method="post" style="margin: 0 auto; width:250px;">
					<table border="1" width="400px">
						<input type="text" id="userid" name="userid"
							placeholder="Username" required="required">

						<input type="password" id="passwd" name="passwd"
							placeholder="Password" required="required">
							<br />
						<input type="button" id="btnLogin" value="로그인" style="padding-top:5px; padding-bottom:5px;">
						<c:if test="${param.message == 'nologin' }">
							<div style="color: red;">로그인 하신 후 사용하세요.</div>
						</c:if>
						<c:if test="${message == 'error' }">
							<div style="color: red;">아이디 또는 비밀번호가 일치하지 않습니다.</div>
						</c:if>
						<c:if test="${message == 'logout' }">
							<div style="color: blue;">로그아웃 처리되었습니다.</div>
						</c:if>
					</table>
				</form>
			</article>
</body>
</html>