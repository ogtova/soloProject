<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	});
</script>

<style>
.fileDrop {
	border: 1px dotted gray;
	background-color: gray;
	width:100%;
	height: 200px;
}
</style>

</head>
<body>
	<%@ include file="../include/menu.jsp"%>
		<article class="container box style3">
			<form id="form1" name="form1" method="post"
				action="${path}/board/insert.do">
				<div style="text-align:center;">
					제목<br /> 
					<input name="title" id="title" size="80" placeholder="제목을 입력하세요">
				</div>
				<div style="text-align:center;">
					내용 <br />
					<textarea id="content" name="content" rows="3" cols="80"
						placeholder="내용을 입력하세요">
					</textarea>
				<script>
						CKEDITOR.replace("content", {
							filebrowserUploadUrl : "${path}/imageUpload.do"
						});
				</script>
				</div>
				<div style="text-align:center;">
					첨부파일을 등록하세요
					<div class="fileDrop"></div>
					<div id="uploadedList"></div>
					<br />
				</div>
					<div class="col-12">
						<ul class="actions">
							<li><input type="button" id="btnSave" value="확인" style="padding-top:5px; padding-bottom:5px;"/></li>
						</ul>
					</div>
				</form>
			</article>
</body>
</html>


