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
		$("#btnWrite").click(function() {
			location.href = "${path}/board/write.do";
		});
	});
	function list(page) {
		location.href = "${path}/board/list.do?curPage=" + page;
	}
</script>
</head>
<body>
	<%@ include file="../include/menu.jsp"%>
		<article class="container box style3">
			<header>
			<h2>DELIVERY</h2>
			<p>핸드폰 전달받으실 주인님을 찾습니다.</p>
			</header>
			<form name="form1" method="post" action="${path}/board/list.do">
				<select name="search_option" style="width:30%; display:inline;">
					<option value="all"
						<c:if test="${map.search_option == 'all'}">selected</c:if>>제목+내용</option>
				</select> <input name="keyword" value="${map.keyword}"> <input
					type="submit" value="조회" style="padding-top:5px; padding-bottom:5px;">
			</form>
			${map.count}개의 게시물이 있습니다.
			<table>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>관리자</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
				<c:forEach var="row" items="${map.list}">
					<tr>
						<td>${row.bno}</td>
						<td><a href="${path}/board/view.do?bno=${row.bno}">
								${row.title} </a> 
							<c:if test="${row.cnt > 0}">
								<span style="color: red;">( ${row.cnt} )</span>
							</c:if>
						</td>
						<td>${row.name}</td>
						<td><fmt:formatDate value="${row.regdate}"
								pattern="yyyy-MM-dd" /></td>
						<td>${row.viewcnt}</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="5" align="center"><c:if
							test="${map.pager.curBlock > 1}">
							<a href="#" onclick="list('1')">[처음]</a>
						</c:if> <c:if test="${map.pager.curBlock > 1}">
							<a href="#" onclick="list('${map.pager.prevPage}')"> [이전]</a>
						</c:if> <c:forEach var="num" begin="${map.pager.blockBegin}"
							end="${map.pager.blockEnd}">
							<c:choose>
								<c:when test="${num == map.pager.curPage}">
									<!-- 현재 페이지인 경우 하이퍼링크 제거 -->
									<span style="color: red;">${num}</span>
								</c:when>
								<c:otherwise>
									<a href="#" onclick="list('${num}')">${num}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach> <c:if test="${map.pager.curBlock < map.pager.totBlock}">
							<a href="#" onclick="list('${map.pager.nextPage}')">[다음]</a>
						</c:if> <c:if test="${map.pager.curPage < map.pager.totPage}">
							<a href="#" onclick="list('${map.pager.totPage}')">[끝]</a>
						</c:if></td>
				</tr>
			</table>
				<c:if test="${sessionScope.userid != null }">
					<button type="button" id="btnWrite" style="padding-top:10px; padding-bottom:10px; float:right;">글쓰기</button>
				</c:if>
			</article>
</body>
</html>