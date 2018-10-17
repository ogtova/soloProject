<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- views/board/view.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/noscript.css" />
<script src="${path}/include/js/common.js"></script>
<script src="${path}/ckeditor/ckeditor.js"></script>
<script>
	$(function() {
		listReply2();

		$("#btnReply").click(function() {
			var replytext = $("#replytext").val(); 
			var bno = "${dto.bno}"; 
			var param = {
				"replytext" : replytext,
				"bno" : bno
			};
			$.ajax({
				type : "post",
				url : "${path}/reply/insert.do",
				data : param,
				success : function() {
					listReply2(); 
				}
			});
		});

		$(".fileDrop").on("dragenter dragover", function(e) {
			e.preventDefault();
		});
		$(".fileDrop")
				.on(
						"drop",
						function(e) {
							e.preventDefault();
							var files = e.originalEvent.dataTransfer.files;
							var file = files[0];
							var formData = new FormData();
							formData.append("file", file);
							$
									.ajax({
										url : "${path}/upload/uploadAjax",
										data : formData,
										dataType : "text",
										processData : false,
										contentType : false,
										type : "post",
										success : function(data) {
											var fileInfo = getFileInfo(data);
											var html = "<a href='"+fileInfo.getLink+"'>"
													+ fileInfo.fileName
													+ "</a><br>";
											html += "<input type='hidden' class='file' value='"
					+fileInfo.fullName+"'>";
											$("#uploadedList").append(html);
										}
									});
						});

		$("#btnList").click(function() {
			location.href = "${path}/board/list.do";
		});
		$("#btnUpdate").click(
				function() {
					var str = "";
					$("#uploadedList .file").each(
							function(i) {
								str += "<input type='hidden' name='files[" + i
										+ "]' value='" + $(this).val() + "'>";
							});
					$("#form1").append(str);
					document.form1.action = "${path}/board/update.do";
					document.form1.submit();
				});
		$("#btnDelete").click(function() {
			if (confirm("삭제하시겠습니까?")) {
				document.form1.action = "${path}/board/delete.do";
				document.form1.submit();
			}
		});

		listAttach();

		$("#uploadedList").on("click", ".file_del", function(e) {
			var that = $(this); 
			$.ajax({
				type : "post",
				url : "${path}/upload/deleteFile",
				data : "fileName=" + $(this).attr("data-src"),
				dataType : "text",
				success : function(result) {
					if (result == "deleted") {
						that.parent("div").remove();
					}
				}
			});
		});
		$("#btnSave").click(
				function() {
					var str = "";
					$("#uploadedList .file").each(
							function(i) {
								console.log(i);
								str += "<input type='hidden' name='files[" + i
										+ "]'	value='" + $(this).val() + "'>";
							});
					$("#form1").append(str);
					document.form1.submit();
				});

	});
	function listReply() {
		$.ajax({
			type : "get",
			url : "${path}/reply/list.do?bno=${dto.bno}",
			success : function(result) {
				$("#listReply").html(result);
			}
		});
	}
	function changeDate(date) {
		date = new Date(parseInt(date));
		year = date.getFullYear();
		month = date.getMonth();
		day = date.getDate();
		hour = date.getHours();
		minute = date.getMinutes();
		second = date.getSeconds();
		strDate = year + "-" + month + "-" + day + " " + hour + ":" + minute
				+ ":" + second;
		return strDate;
	}
	function listReply2() {
		$.ajax({
			type : "get",
			contentType : "application/json",
			url : "${path}/reply/list_json.do?bno=${dto.bno}",
			success : function(result) {
				console.log(result);
				var output = "<table>";
				for ( var i in result) {
					var repl = result[i].replytext;
					repl = repl.replace(/  /gi, "&nbsp;&nbsp;");
					repl = repl.replace(/</gi, "&lt;"); 
					repl = repl.replace(/>/gi, "&gt;");
					repl = repl.replace(/\n/gi, "<br>"); 

					output += "<tr><td>" + result[i].name;
					date = changeDate(result[i].regdate);
					output += "(" + date + ")";
					output += "<br>" + repl + "</td></tr>";
				}
				output += "</table>";
				$("#listReply").html(output);
			}
		});
	}
	
	function listAttach() {
		$
				.ajax({
					type : "post",
					url : "${path}/board/getAttach/${dto.bno}",
					success : function(list) {
						$(list)
								.each(
										function() {
											var fileInfo = getFileInfo(this);
											var html = "<div><a href='"+fileInfo.getLink+"'>"
													+ fileInfo.fileName
													+ "</a>&nbsp;&nbsp;";
											<c:if test="${sessionScope.userid == dto.writer}">
											html += "<a href='#' class='file_del' data-src='"
					+this+"'>[삭제]</a></div>";
											</c:if>
											$("#uploadedList").append(html);
										});
					}
				});
	}
</script>
<style>
.fileDrop {
	width: 600px;
	height: 100px;
	border: 1px dotted gray;
	background-color: gray;
}
</style>

</head>
<body>
	<%@ include file="../include/menu.jsp"%>
		<article class="container box style3">
			<form id="form1" name="form1" method="post"
				action="${path}/board/insert.do">
				<div>
					제목 : ${dto.title}
				</div>
				<div>조회수 : ${dto.viewcnt}</div><br />
				<div style="width: 100%; height:300px; border:1px solid black;">
					${dto.content}
					<script>
						//ckeditor 적용
						CKEDITOR.replace("content", {
							filebrowserUploadUrl : "${path}/imageUpload.do",
							height : "300px"
						});
					</script>
				</div>
				<div style="text-align: center;">
					<input type="hidden" name="bno" value="${dto.bno}">
					<br />
				<div class="col-12">
					<ul class="actions">
					<button type="button" id="btnList">목록</button>
				</ul>
				</div>
				</div>
			</form>
			<br />
			<!-- 댓글 작성 -->
			<div style="text-align: center;">
				<c:if test="${sessionScope.userid != null }">
					<textarea id="replytext" placeholder="댓글을 작성하세요" style="width:100%; height:100px;"></textarea>
					<br>
						<button type="button" id="btnReply">확인</button>
				</c:if>
			</div>
			<div id="listReply"></div>
		</article>
</body>
</html>
