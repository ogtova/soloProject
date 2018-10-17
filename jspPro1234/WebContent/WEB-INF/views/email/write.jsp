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

</head>
<body>
<%@ include file="../include/menu.jsp"%>
	<article class="container box style3">
		<header>
			<h2>GET</h2>
			<p>감사합니다. 최선을다해 주인님을 찾아드릴게요.</p>
		</header>
			<form method="post" action="${path}/email/send.do">
				<div class="row gtr-50">
				<div class="col-6 col-12-mobile"><input type="text" class="text" name="name" placeholder="Name" /></div>
				<div class="col-6 col-12-mobile"><input type="text" class="text" name="email" placeholder="Email" /></div>
				<div class="col-12">
					<textarea name="message" placeholder="          @양식@ &#13;&#10; *핸드폰기종 : (아이폰x 블랙) &#13;&#10; *GET 장소      : (서울 용산구 이태원동 oo술집) &#13;&#10; *연락처          : (010-xxxx-xxxx)"></textarea>
				</div>
				<div class="col-12">
					<ul class="actions">
						<li><input id="message" type="submit" value="Send Message"/></li>
						<script>
							document.getElementById("message").addEventListener('click',function ()
								{		
   									alert("감사합니다 확인시 연락드리겠습니다.");
								}); 
						</script>
					</ul>
				</div>
			</div>
		</form>
	</article>
</body>
</html>