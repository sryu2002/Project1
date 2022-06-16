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
<title>공지사항</title>
<style>
section {
	margin: 100px;
	padding: 10px;
}

.images {
	height: 600px;
	width: 1189px;
}
</style>
</head>
<body>
	<header>
		<jsp:include page="./centerheader.jsp" />
	</header>

	<section>
		<div class="container">
			<!-- Slider main container -->
			<div class="swiper">
				<!-- Additional required wrapper -->
				<div class="swiper-wrapper">
					<!-- Slides -->
					<div class="swiper-slide">
						<a href="#"><img class="images" src="images/Puppy 1.jpeg"
							alt="Image not Found" /></a>
					</div>
					<div class="swiper-slide">
						<img class="images" src="images/slider image ex1.jpeg"
							alt="Image not Found" />
					</div>
					<div class="swiper-slide">
						<img class="#" alt="Image not Found">
					</div>
				</div>
				<!-- If we need pagination -->
				<div class="swiper-pagination"></div>

				<!-- If we need navigation buttons -->
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>
	</section>

	<section>
		<p>공지사항</p>
		<hr>
		<div class="categories">입양</div>
		<div class="title">제목</div>
		<div class="date">날짜</div>
		<div class="dropdown">
			<i class="bi bi-caret-down-square"></i> <i
				class="bi bi-caret-up-square"></i>
		</div>
		<hr>
			<div class="categories"></div>
			<div class="title"></div>
			<div class="date"></div>
			<div class="view"></div>
			<hr>

		<div class="categories">장례</div>
		<div class="title">제목</div>
		<div class="date">날짜</div>
		<div class="dropdown">
			<i class="bi bi-caret-down-square"></i> <i
				class="bi bi-caret-up-square"></i>
		</div>
		<hr>
		<c:forEach var="bList" items="${bList}">
			<div class="categories">${bList.b_category}</div>
			<div class="title">${bList.b_title}</div>
			<div class="date">${bList.postDate}</div>
			<div class="view">${bList.b_views}</div>
			<hr>
		</c:forEach>
	</section>

	<footer>
		<jsp:include page="./centerfooter.jsp" />
	</footer>


	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
	<script>
    const swiper = new Swiper(".swiper", {
      // Optional parameters
      loop: true,

      // If we need pagination
      pagination: {
        el: ".swiper-pagination",
      },

      // Navigation arrows
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  </script>
</body>
</html>