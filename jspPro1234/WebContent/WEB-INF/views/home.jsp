<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<html>
	<head>
		<title>GDR SYSTEM</title>
		<meta charset="utf-8" />
		<%@ include file="include/header.jsp"%>
		<link rel="stylesheet" type="text/css"
		href="${pageContext.request.contextPath}/resources/css/main.css">
		<%@ include file="include/menu.jsp"%>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/noscript.css" />
	</head>
	
	<body class="is-preload">

		<!-- Header -->
			<section id="header">
				<header>
					<h1>핸드폰 찾기 서비스<br />
					{ GDR }</h1>
					<p>By_OGTO</p>
				</header>
				<footer>
					<a href="#banner" class="button style2 scrolly-middle">카테고리 보기</a>
				</footer>
			</section>
			<section id="banner">
				<header>
					<h2>G . D . R 이란?</h2>
				</header>
				<p>
				(<a style="color:red;">G</a>ET)고객님이 주우신 핸드폰을　　　　　　　　　　　　　　　　　　<br />
			    (<a style="color:red;">D</a>ELIVERY)소정의 수수료를 드려 저희가 전달받은뒤　　　　　　　　　  <br />
				(<a style="color:red;">R</a>OOT)핸드폰 주인분께 소정의 수수료를 받고 찾아드리는 서비스 입니다.
				</p>
				<footer>
					<a href="#first" class="button style2 scrolly">계속 진행</a>
				</footer>
			</section>
			<article id="first" class="container box style1 right">
				<a class="image fit"><img src="${pageContext.request.contextPath}/resources/images/get.jpg" alt="" /></a>
				<div class="inner">
					<header>
						<h2>핸드폰 을<br />
						'GET'<br /> (줍는다.)</h2>
					</header>
					<p>저희 GDR은 주우신 핸드폰 을 가져오시게되면,<br /> 핸드폰 출고가의 10% 를 감사의 의미로 드리고 있습니다.<br /> 주인을 못찾더라도 절대 돈을 돌려받지 않습니다.</p>
				</div>
			</article>
			<article class="container box style1 left">
				<a class="image fit"><img src="${pageContext.request.contextPath}/resources/images/dele.jpg" style="width:100%; height:463px;" alt="" /></a>
				<div class="inner">
					<header>
						<h2>GDR 에게 핸드폰을<br />
						'DELIVERY'<br />(전달하다.)</h2>
					</header>
					<p>전달방법은 간단한 양식이담긴<br /> 메일을 보내주시면<br /> 저희직원이 바로 연락드립니다.</p>
				</div>
			</article>
			<article class="container box style1 right">
				<a class="image fit"><img src="${pageContext.request.contextPath}/resources/images/root.jpg" alt="" /></a>
				<div class="inner">
					<header>
						<h2>고객께 핸드폰을<br />
						'ROOT'<br /> (찾아주다.) </h2>
					</header>
					<p>간단한 서류를통해<br /> 핸드폰주인이 확인이되면,<br /> 저희 직원이랑 연락을통해<br />당일 배송해 드리고있습니다.</p>
				</div>
			</article>
			<article class="container box style2">
				<header>
					<h2>DeliVery</h2>
					<p>핸드폰 찾기 <a href="${path}/board/list.do" style="font-color:blue;">바로가기</a></p>
				</header>
			</article>
		<section id="footer">
			<ul class="icons">
				<li><a href="https://twitter.com/" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="https://www.facebook.com/" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
				<li><a href="https://www.google.co.kr/" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
			</ul>
			<div class="copyright">
				<ul class="menu">
					<li>&copy; BY_OGTO</li>
				</ul>
			</div>
		</section>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/jquery.poptrox.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

	</body>
</html>