<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/headercss.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<title>후기 작성</title>
<style>
.inputform {
	width: 90%;
	margin: auto;
	border-style: solid;
	border-radius: 10px;
	min-height: 200px;
	max-height: 1000px;
	padding: 20px;
}

.title {
	width: 70%;
}

.content {
	width: 90%;
	height: 80%;
	margin-top: 30px;
	margin: auto;
}

.content1 {
	width: 100%;
	height: 100%;
	min-height: 150px;
}

.info {
	float: right;
}

.mb-3 {
	width: 80%;
	margin: auto;
}

.regbutton {
	margin: auto;
	width: 10%;
}

.regbutton1 {
	margin: auto;
	width: 70%;
	border-radius: 10%;
}
</style>
</head>
<body>
	<header>
		<jsp:include page="./centerheader.jsp" />
	</header>

	<section>
		<form action="./adoptionReviewRegister">
				<div class="inputform">
					<input type = "hidden" name = "id" value = ${}>
					<input type = "hidden" name = "date" value = ${}>
					<span>제목 : </span> <input class="title" name="title" type="text">
					<span class="info">이름 : </span> <span class="info">날짜 : </span>
					<div class="content">
						<span>내용</span>
						<textarea class="content1" name="contents" placeholder="내용을 입력하세요"
							rows="15" type="text"></textarea>
					</div>
				</div>


			<hr>
			<div class="mb-3">
				<label for="formFileMultiple" class="form-label">파일 업로드</label> <input
					class="form-control" type="file" id="formFileMultiple" multiple>
			</div>
			<div class="regbutton">
				<input type = "submit" name = "files" class="regbutton1" value = "등록"></input>
				<input type = "hidden" id = "fileCheck" name = "fileCheck" value = "0">
			</div>
		</form>
	</section>

	<footer>
		<jsp:include page="./centerfooter.jsp" />
	</footer>
</body>
</html>