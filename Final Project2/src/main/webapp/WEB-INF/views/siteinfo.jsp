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
<title>사이트 소개</title>
<style>
.info-image {
	float: right;
	width: 100px;
	height: 150px;
}
</style>
</head>
<body>
	<header>
		<jsp:include page="./centerheader.jsp" />
	</header>

	<section>
		<h1>기획의도</h1>
		<img class="info-image" src="./images/Main Dog 1.jpg"
			alt="image not found" /> <span class="info"> Lorem
			ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse non
			odio eu enim interdum elementum cursus vitae nulla. Etiam vitae nunc
			volutpat, egestas sapien non, ultrices sem. Fusce neque magna,
			fringilla vel lacus eget, suscipit mollis neque. Donec ornare diam et
			faucibus pretium. Sed sed rutrum ante, id laoreet mauris. Maecenas
			lobortis iaculis libero, sit amet pharetra augue molestie ut.
			Curabitur vel augue tempor, molestie metus sit amet, tempor purus.
			Cras sodales ut mi vitae laoreet. Interdum et malesuada fames ac ante
			ipsum primis in faucibus. Aliquam placerat nibh a ligula vulputate
			finibus. Nulla euismod lorem in pellentesque dignissim. Praesent
			mollis nunc sed nisl semper, sed venenatis enim tincidunt. Praesent
			imperdiet pretium tellus eget tempus. Praesent sit amet justo
			malesuada, consectetur lectus eu, hendrerit velit. Donec a nunc id ex
			consequat iaculis. Maecenas volutpat magna vitae ornare sagittis.
			Suspendisse laoreet, justo ut congue tempor, metus lorem placerat
			purus, a iaculis est lorem in neque. Nunc eget posuere libero, eu
			ullamcorper quam. Vestibulum ante ipsum primis in faucibus orci
			luctus et ultrices posuere cubilia curae; Mauris laoreet risus dictum
			justo aliquam, vitae auctor magna luctus. Duis facilisis est euismod
			placerat convallis. Mauris maximus eget nulla sed vehicula. Duis
			facilisis convallis nibh ac vehicula. Integer at libero efficitur,
			tempus dui ac, vestibulum justo. Praesent lacinia lorem quis tellus
			faucibus, nec gravida nunc porta. Nunc posuere orci vel sapien
			dapibus dignissim. Vestibulum consectetur ullamcorper enim, sed
			laoreet urna efficitur eu. Mauris sodales dapibus felis, eget mollis
			neque vehicula a. Aliquam nec rhoncus tellus, ut porttitor sem.
			Nullam aliquam congue elit in suscipit. Sed ac risus molestie, ornare
			metus lacinia, suscipit leo. Curabitur ipsum est, lobortis sed nunc
			venenatis, laoreet finibus risus. Lorem ipsum dolor sit amet,
			consectetur adipiscing elit. Sed eleifend ipsum purus, eu eleifend
			diam commodo gravida. Donec eget sollicitudin elit. Proin lacinia
			pellentesque risus sit amet fringilla. </span>
	</section>

	<footer>
		<jsp:include page="./centerfooter.jsp" />
	</footer>
</body>
</html>