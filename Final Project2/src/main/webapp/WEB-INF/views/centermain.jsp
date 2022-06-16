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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<title>adoption app</title>
<meta name=“viewport” content=“width=device-width, initial-scale=1”>
<style type=“text/css”>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	font-size: 16px;
	font-family: “SF Pro KR”, “SF Pro Text”, “Yoon Gothic”, “Myriad Set Pro”,
		system-ui, -apple-system, BlinkMacSystemFont, “Segoe UI”,
		“SF Pro Icons”, “Apple Legacy Icons”, “Apple Gothic”, “HY Gulim”,
		“MalgunGothic”, “HY Dotum”, “Lexi Gulim”, “Helvetica Neue”,
		“Helvetica”, “Arial”, sans-serif;
	font-size: 16px;
}

body {
	margin: 100px 100px;
}

.body {
	display: grid;
	grid-template-columns: 45fr 55fr;
}

.hr {
	margin: 20px auto;
}

.body-1 {
	align-items: center;
	margin: auto 15px;
	min-width: 300px;
}

.body-1>.body-1-1 {
	margin-top: 15px;
}

.box-1 {
	text-align: center;
	border: 1px solid;
	border-radius: 10px;
	min-height: 300px;
}

.box-2 {
	text-align: center;
	display: flex;
	margin-top: 10px;
	flex: auto;
	width: 100%;
	justify-content: space-evenly;
}

.box-3 {
	border: 1px solid;
	border-radius: 10px;
	height: 70px;
	width: 70px;
}

.body-2 {
	border: 1px solid;
	border-radius: 10px;
	min-height: 150px;
	margin-top: 20px;
}

.body-2-1-1 {
	margin: 15px 15px;
}

.body-3 {
	position: absolute;
	border: 1px solid;
	border-radius: 10px;
	min-height: 150px;
	margin-top: 20px;
	width: 100%;
	min-width: 300px;
}

.body-3>#ck1 {
	float: left;
}
</style>
</head>
<body>
	<section>
		<div class=“body”>
			<div>
				<div class=“box-1”>
					사진
				</div>
				<div class=“box-2”>
					<div class=“box-3”>사진</div>
					<div class=“box-3”>사진</div>
					<div class=“box-3”>사진</div>
					<div class=“box-3”>사진</div>
					<div class=“box-3”>사진</div>
				</div>
			</div>

			<div class=“body-1”>
				<div>
					<strong>이름 : </strong> <span></span>
				</div>
				<hr>
				<div class=“body-1-1”>
					<strong>나이 : </strong> <span></span>
				</div>
				<div class=“body-1-1”>
					<strong>성별 : </strong> <span></span>
				</div>

				<div class=“body-1-1”>
					<strong>품종 : </strong> <span></span>
				</div>
				<div class=“body-1-1”>
					<strong>예방접종 여부 : </strong> <span></span>
				</div>
				<div class=“body-1-1”>
					<strong>가격 : </strong> <span></span>
				</div>
			</div>
		</div>
		<hr class=“hr”>

		<form action=“./“>
			<span>입양 신청자 정보</span>
			<div class=“body-2”>

				<div class=“body-2-1”>
					<!— 입양신청정보 리스트 —>
					<div class=“body-2-1-1”>
						<strong>이름 :
							askldjaskldjaslk;djaklsdjkals;djklasdj;lksajkl;sad</strong>
					</div>
					<!— 이름 —>
					<div class=“body-2-1-1”>
						<strong>주소 : </strong>
					</div>
					<!— 주소 —>
					<div class=“body-2-1-1”>
						<strong>연락처 : </strong>
					</div>
					<!— 연락처 —>
					<div class=“body-2-1-1”>
						<strong>주거형태 : </strong>
					</div>
					<!— 주거형태 —>
				</div>
			</div>
		</form>
		<hr class=“hr”>
		<form name=“qnaFrm” action=“./home2” onsubmit=“return check()”>
			<span>동의 여부 질문</span>
			<div class=“body-3”>
				<div>질문1</div>
				<div>
					<input id=“ck1” type=“checkbox” title=“첫번째채쿠” value=“1”>동의합니다
				</div>
				<div>질문2</div>
				<div>
					<input id=“ck2” type=“checkbox” title=“두번째체크박스” value=“2”>동의합니다
				</div>
				<div>질문3</div>
				<div>
					<input id=“ck3” type=“checkbox” title=“세번째체크박스” value=“3”>동의합니다
				</div>
				<div>
					<input id=“allCk” type=“checkbox”/>전체 동의
				</div>

				<input type=“submit” value=“신청하기”/>

			</div>
		</form>
	</section>
	<footer></footer>
</body>


<script type=“text/javascript”>
	var checkedall = false;
	var checked1 = false;
	var checked2 = false;
	var checked3 = false;

	$(‘#allCk’).click(function() {
		checkedall = $(‘#allCk’).is(‘:checked’);
		console.log(checkedall);
		if (checkedall) {
			$(‘input:checkbox’).prop(‘checked’, true);

		} else {
			$(‘input:checkbox’).prop(‘checked’, false);
		}

	});
	$(‘#ck1’).click(function() {
		checked1 = $(‘#ck1’).is(‘:checked’);

		if (checked1) {
			$(‘#ck1’).prop(‘checked’, true);
		} else {
			$(‘#allCk’).prop(‘checked’, false);
			checkedall = false;
		}
		console.log(checked1);
	});
	$(‘#ck2’).click(function() {
		checked2 = $(‘#ck2’).is(‘:checked’);

		if (checked2) {
			$(‘#ck2’).prop(‘checked’, true);
		} else {
			$(‘#allCk’).prop(‘checked’, false);
			checkedall = false;
		}
		console.log(checked2);
	});
	$(‘#ck3’).click(function() {
		checked3 = $(‘#ck3’).is(‘:checked’);

		if (checked3) {
			$(‘#ck3’).prop(‘checked’, true);
		} else {
			$(‘#allCk’).prop(‘checked’, false);
			checkedall = false;
		}
		console.log(checked3);
	});

	function check() {
		if (checked1 == true && checked2 == true && checked3 == true) {
			checkedall == true;
			console.log(checkedall);
			return true;
		}

		if (checkedall == false) {
			alert(“체크를 해주세요.”);
			return false;//submit 실행 막기
		}

		//form 태그의 내용 전부 가져오기
		var frm = document.qnaFrm;
		console.log(frm);

		var length = frm.length - 1;//submit 버튼 제외
		console.log(length);

		for (var i = 0; i < length; i++) {
			if (frm[i].value == “” || frm[i].value == null) {
				alert(frm[i].title + “입력!”);
				frm[i].focus();
				return false;
			}
		}

		return true;//모든 칸이 다 채워졌고, 중복 체크도 한 상태
	}
</script>
</html>