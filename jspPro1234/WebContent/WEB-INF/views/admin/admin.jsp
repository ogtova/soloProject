<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GDR SYSTEM</title>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
	<%@ include file="../include/menu.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/noscript.css" />
</head>
	<body class="is-preload">
			<section id="header">
			<div class="container">
							<div
								class="col-md-6 col-md-offset-3 col-md-pull-3 js-fullheight slider-text">
								<div class="slider-text-inner">
									<div class="desc">
										<h2>${sessionScope.admin_name}
											(${sessionScope.admin_userid})님 환영합니다.</h2>
									</div>
								</div>
							</div>
						</div>
				<header>
					<h1>핸드폰 찾기 서비스<br />
					{ GDR }</h1>
					<p>By_OGTO</p>
				</header>
				<footer>
					<a href="#banner" class="button style2 scrolly-middle">Proceed as anticipated</a>
				</footer>
			</section>

		<!-- Banner -->
			<section id="banner">
				<header>
					<h2>G . D . R 이란?</h2>
				</header>
				<p>
				(<a style="color:red;">G</a>ET)고객님이 주우신 핸드폰을　　　　　　　　　　　　　　　　　　<br />
			    (<a style="color:red;">D</a>ELIVERY)소정의 수수료를 드려 저희가 전달받은뒤　　　　　　　　　  <br />
				(<a style="color:red;">R</a>OOT)핸드폰 주인분께 소정의 수수료를 받고 찾아드리는 서비스 입니다.</p>
				<footer>
					<a href="#first" class="button style2 scrolly">Act on this message</a>
				</footer>
			</section>

		<!-- Feature 1 -->
			<article id="first" class="container box style1 right">
				<a href="#" class="image fit"><img src="${pageContext.request.contextPath}/resources/images/get.jpg" alt="" /></a>
				<div class="inner">
					<header>
						<h2>핸드폰 을<br />
						'GET' (줍는다.)</h2>
					</header>
					<p>저희 GDR은 주우신 핸드폰 을 가져오시게되면,<br /> 핸드폰 출고가의 10% 를 감사의 의미로 드리고 있습니다.<br /> 주인을 못찾더라도 절대 돈을 돌려받지 않습니다.</p>
				</div>
			</article>

		<!-- Feature 2 -->
			<article class="container box style1 left">
				<a href="#" class="image fit"><img src="${pageContext.request.contextPath}/resources/images/dele.jpg" style="width:100%; height:463px;" alt="" /></a>
				<div class="inner">
					<header>
						<h2>GDR 에게 핸드폰을<br />
						'DELIVERY'<br />(전달하다.)</h2>
					</header>
					<p>전달방법은 간단한 서류를 작성해주시어 택배동봉, 또는 온라인접수도 가능합니다.</p>
				</div>
			</article>
			
		<!-- Feature 3 -->	
			<article class="container box style1 right">
				<a href="#" class="image fit"><img src="${pageContext.request.contextPath}/resources/images/root.jpg" alt="" /></a>
				<div class="inner">
					<header>
						<h2>고객께 핸드폰을<br />
						'ROOT' (찾아주다.) </h2>
					</header>
					<p>간단한 서류를통해<br /> 핸드폰주인이 확인이되면,<br /> 저희 직원이랑 연락을통해<br />당일 배송해 드리고있습니다.</p>
				</div>
			</article>

		<!-- Portfolio -->
			<article class="container box style2">
				<header>
					<h2>Magnis parturient</h2>
					<p>Justo phasellus et aenean dignissim<br />
					placerat cubilia purus lectus.</p>
				</header>
				<div class="inner gallery">
					<div class="row gtr-0">
						<div class="col-3 col-12-mobile"><a href="${pageContext.request.contextPath}/resources/images/01.jpg" class="image fit"><img src="${pageContext.request.contextPath}/resources/images/thumbs/01.jpg" alt="" title="Ad infinitum" /></a></div>
						<div class="col-3 col-12-mobile"><a href="${pageContext.request.contextPath}/resources/images/02.jpg" class="image fit"><img src="${pageContext.request.contextPath}/resources/images/thumbs/02.jpg" alt="" title="Dressed in Clarity" /></a></div>
						<div class="col-3 col-12-mobile"><a href="${pageContext.request.contextPath}/resources/images/03.jpg" class="image fit"><img src="${pageContext.request.contextPath}/resources/images/thumbs/03.jpg" alt="" title="Raven" /></a></div>
						<div class="col-3 col-12-mobile"><a href="${pageContext.request.contextPath}/resources/images/04.jpg" class="image fit"><img src="${pageContext.request.contextPath}/resources/images/thumbs/04.jpg" alt="" title="I'll have a cup of Disneyland, please" /></a></div>
					</div>
					<div class="row gtr-0">
						<div class="col-3 col-12-mobile"><a href="${pageContext.request.contextPath}/resources/images/05.jpg" class="image fit"><img src="${pageContext.request.contextPath}/resources/images/thumbs/05.jpg" alt="" title="Cherish" /></a></div>
						<div class="col-3 col-12-mobile"><a href="${pageContext.request.contextPath}/resources/images/06.jpg" class="image fit"><img src="${pageContext.request.contextPath}/resources/images/thumbs/06.jpg" alt="" title="Different." /></a></div>
						<div class="col-3 col-12-mobile"><a href="${pageContext.request.contextPath}/resources/images/07.jpg" class="image fit"><img src="${pageContext.request.contextPath}/resources/images/thumbs/07.jpg" alt="" title="History was made here" /></a></div>
						<div class="col-3 col-12-mobile"><a href="${pageContext.request.contextPath}/resources/images/08.jpg" class="image fit"><img src="${pageContext.request.contextPath}/resources/images/thumbs/08.jpg" alt="" title="People come and go and walk away" /></a></div>
					</div>
				</div>
			</article>

		<!-- Contact -->
			<article class="container box style3">
				<header>
					<h2>Nisl sed ultricies</h2>
					<p>Diam dignissim lectus eu ornare volutpat orci.</p>
				</header>
				<form method="post" action="#">
					<div class="row gtr-50">
						<div class="col-6 col-12-mobile"><input type="text" class="text" name="name" placeholder="Name" /></div>
						<div class="col-6 col-12-mobile"><input type="text" class="text" name="email" placeholder="Email" /></div>
						<div class="col-12">
							<textarea name="message" placeholder="Message"></textarea>
						</div>
						<div class="col-12">
							<ul class="actions">
								<li><input type="submit" value="Send Message" /></li>
							</ul>
						</div>
					</div>
				</form>
			</article>
		<section id="footer">
			<ul class="icons">
				<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
				<li><a href="#" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
				<li><a href="#" class="icon fa-pinterest"><span class="label">Pinterest</span></a></li>
				<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
				<li><a href="#" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
			</ul>
			<div class="copyright">
				<ul class="menu">
					<li>&copy; Untitled. All rights reserved.</li>
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