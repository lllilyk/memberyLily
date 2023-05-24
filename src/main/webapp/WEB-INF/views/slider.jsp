<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bx slider</title>
<!-- bxslider -->
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<!-- 기본 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>
.slider {
	position: relative;
	top: 160px;
}

.slider img {
	display: block;
	width: 350px;
	margin: auto
}

.bx-wrapper {
	position: relative;
}

.bx-controls-direction {
	font-size: 100px;
}

.bx-controls-direction a {
	position: absolute;
	display: block;
	width: 100px;
	height: 110px;
	overflow: hidden;
	transform: translateY(-280%);
	color: #5a5a5a;
	font-weight: normal;
}

.bx-controls-direction .bx-prev {
	left: 0;
}

.bx-controls-direction .bx-next {
	right: 0;
}

.bx-controls-direction .bx-prev:before {
	content: "\e93d";
	font-family: 'xeicon';
}

.bx-controls-direction .bx-next:before {
	content: "\e940";
	font-family: 'xeicon';
}

.bx-pager {
	position: absolute;
	left: 0;
	bottom: -37px;
	width: 100%;
	text-align: center;
}

.bx-pager div {
	display: inline-block;
	padding: 0 5px;
}

.bx-pager div a {
	display: block;
	color: transparent;
	width: 24px;
	height: 3px;
	background: #999;
	font-size: 0;
}

.bx-pager div a.active {
	background: #000;
}
</style>
</head>
<body>

	<div class="slider">
		<ul class="slide_gallery">
			<li><img src="img/petplanet1.png" alt="사진1"></li>
			<li><img src="img/petplanet2.png" alt="사진2"></li>
			<li><img src="img/petplanet3.png" alt="사진3"></li>
			<li><img src="img/petplanet4.png" alt="사진4"></li>
			<li><img src="img/petplanet5.png" alt="사진5"></li>
			<li><img src="img/petplanet6.png" alt="사진6"></li>
			<li><img src="img/petplanet7.png" alt="사진7"></li>
			<li><img src="img/petplanet8.png" alt="사진8"></li>
		</ul>
	</div>

	<script src="/js/main.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>