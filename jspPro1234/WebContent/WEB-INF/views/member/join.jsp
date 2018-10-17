<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/noscript.css" />
<script>
	$(function() {
		$("#btnjoin").click(function() {
			var userid = $("#userid").val(); 
			var passwd = $("#passwd").val();
			var name = $("#name").val();
			var email = $("#email").val();
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
			if (passwdc == "") {
				alert("비밀번호를 확인하세요.");
				$("#passwdc").focus();
				return;
			}
			if (name == "") {
				alert("이름을 입력하세요.");
				$("#name").focus(); 
				return; 
			}
			if (phone == "") {
				alert("전화번호를 입력하세요.");
				$("#phone").focus(); 
				return; 
			}
			if (email == "") {
				alert("이메일을 입력하세요.");
				$("#email").focus();
				return;
			}
			document.form2.action = "${path}/member/join_1.do";
			document.form2.submit();
		});
	});
</script>
</head>
<body>
	<%@ include file="../include/menu.jsp"%>
		<article class="container box style3" style="text-align:center;">
				<h2 id="loginH2">회원가입</h2><br />
				<form name="form2" method="post">
					<table border="1" width="400px">
						<input type="text" id="userid" name="userid"
							placeholder="Username" required="required">

						<input type="password" id="passwd" name="passwd"
							placeholder="Password" required="required">
							
						<input type="password" id="passwdc" name="passwdc"
							placeholder="password confirm" required="required">

						<input type="text" id="name" name="name" placeholder="name"
							required="required">
							
						<input type="text" id="phone" name="phone" placeholder="phone"
							required="required">

						<input type="email" id="email" name="email" placeholder="email"
							required="required">
							<br />

						<input type="button" class="btn btn-primary btn-block btn-large"
							id="btnjoin" value="회원가입">
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