<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tutor Home</title>
<style>
	#navbar{
		 overflow: hidden;
	}
	.sticky{
		position: fixed;
		top: 60px;
		width: 100%
	}
	.navbar-brand{
			font-size:16px;
	}
		.navbar-brand .a:hover {
			color:black;
		}
		.selected{
			border-bottom: solid 2px darkcyan;
			margin-top: 9px;
		}

		.searchLecture {
		  border: 0;
		  outline: 0;
		  background: transparent;
		  border-bottom: 2px solid black;
		}
		.searchButton{
			border:0;
			background-color:transparent;
		}
		.applyButton{
			background-color: darkcyan;
			border-radius: 2px;
			color: white;
			padding: 13px 20px;
			white-space: nowrap;
			font-size: 1.4rem;
			font-weight: 500;
			letter-spacing: .007px;
			display: flex;
			-ms-flex-direction: row;
			-webkit-flex-direction: row;
			flex-direction: row;
			outline:none;
			border:none;
		}
</style>

	<!-- 별점플러그인 관련 링크 -->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
	<link rel="stylesheet" href="/finalp/resources/css/fontawesome-stars.css">
</head>
<body>
<c:import url="../header.jsp" />

<div id="banner" style="height:305px;background-image: url('/finalp/resources/img/avatar.jpg');background-size:cover;background-position-y: -200px;"></div>

	<div style="background-color:hsla(0, 0%, 93.3%, .4);">
	
		<div class="container about" style="display:flex;width:1284px"">
		
			<div class="profile" style="height: 96px;position: relative;display: flex;">
				<div class="user_image" style="width: 80px;height: 80px;margin: 20px 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
					<img height="80" width="80" src="/finalp/resources/img/emma.jpg" style="display: block;margin-left: auto;margin-right: auto;">
				</div>
			</div>

			<div class="desc">
				<h3 style="font-size: 2.6rem;font-weight: 400;line-height: 3rem;margin-top: 30px;padding-left: 10px;">김재석</h3>
				<h5 style="padding-left:10px;color:gray">수강생 25명</h5>
			</div>

			<div style="margin-left: 75%;margin-top: 25px;">
			<button class="applyButton">수강신청</button>
			</div>


		</div>
		<!--
		
		-->

	</div>

	<div id="navbar" style="z-index:99;width:100%;height:48px;background-color: hsla(0, 0%, 97%, 1);text-align:center; font-size:14px">
		<div class="container about" style="display:flex;">
			<nav class="navbar sticky-top navbar-light bg-light" style="display:flex">
			  <a href="#" class="navbar-brand" href="#" style="width:120px;color:gray"><span class="a">Home</span><div class="selected"></div></a>
			  <a href="#" class="navbar-brand" href="#" style="width:120px;color:gray"><span class="a">강의</span></a>
			  <a href="#" class="navbar-brand" href="#" style="width:120px;color:gray"><span class="a">과제</span></a>
			  <a href="#" class="navbar-brand" href="#" style="width:120px;color:gray"><span class="a">Test</span></a>

			  <form style="margin-top:7px;display:flex">
			  <span class="a"><button type="submit" class="searchButton" style="outline:none"><img src="/finalp/resources/img/search.png" style="padding: 5px 30px;cursor:pointer"></button></span>
				  <input class="searchLecture" type="text" placeholder="검색" style="height: 35px;width: 150px;background: transparent;margin-left: -30px;">
				</form>

			</nav>
		</div>
		</div>

	
  
<!-- About -->

<div class="container about" style="width:1284px">

	<section class="about" id="about" style="width:1284px">
		<!--<div class="container about" style="width:1284px">-->
			<div class="row">

				<div class="col-md-7 big-letter">
				<iframe width="734" height="400" src="https://www.youtube.com/embed/_ZPAReBKF6k" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
					<p style="font-size:14px;color:gray;float:right">
						조회수 10회
					</p>
					<br>
				</div>
				<div class="col-md-5">
					<h4>배열 기초 강의</h4>
					<br>
					<p>
						배열(Array)은 연관된 정보를 그룹핑 하는데 사용한다.
						이해를 돕기 위해서 비유를 들어보겠다. (비유는 이해를 돕기 위한 것일 뿐이다. 비유가 오히려 이해에 방해가 될 수 있다. 비유가 도움되지 않는다면 뒤어서 언급될 기술적인 설명을 보자.
					</p>
					<br>
					<img class="pull-right" src="/finalp/resources/img/logo2.PNG" alt="signature">
					<p style="font-size:14px">자세히 보기</p>
				</div>
			</div>
		<!--</div>-->
	</section>
	
	<hr>

	<!--<div class="container">-->
	<div style="display:flex">
	<h4>평가 13개</h4>
	</div>
	<section class="about" id="about" style="width:1284px;padding-top:0">
		<div class="row">

			<div class="col-md-7 big-letter">
				
				<!--리뷰 등록 템플릿 -->
				<div class="message" style="display:flex;width:750px;margin-bottom: 50px;">
					<button style="background: none;border: none;outline: none;display: flex;">
					<div class="user_image" style="width: 45px;height: 45px;cursor: pointer;margin: 0 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
						<img height="45" width="45" src="/finalp/resources/img/emma.jpg" style="display: block;margin-left: auto;margin-right: auto;">
					</div>
				   </button>
		
					<form style="width:100%">
					  <div class="form-group" style="font-size:15px;padding-top: 50px;">
						<input type="text" class="messageInput" id="inputAddress" placeholder="댓글 추가" style="border:none;outline:none;border-bottom: solid 1px black;width:100%">
						<select id="example">
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="4">4</option>
						  <option value="5">5</option>
						</select>
					  </div>

					  <button type="submit" class="btn btn-primary" style="float:right">리뷰등록</button>
					</form>
				</div>
				<!-- 리뷰 등록 템플릿 끝 -->

				<!-- 댓글 리스트 폼 -->
				<div class="message" style="display:flex;width:750px;padding-bottom: 50px;">
					<button style="background: none;border: none;outline: none;display: flex;">
					<div class="user_image" style="width: 45px;height: 45px;cursor: pointer;margin: 0 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
						<img height="45" width="45" src="/finalp/resources/img/emma.jpg" style="display: block;margin-left: auto;margin-right: auto;">
					</div>
				   </button>
				   <p>content dienlvnso soenvkd slaiencl  감사합니다 잘 들었습니다!!</p>
				   <div style="margin-top:1%;position: absolute;left: 87%;">
					   <select id="example2">
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="4">4</option>
						  <option value="5">5</option>
						</select>
					</div>
				</div>
				<!-- 댓글 리스트 폼 끝--> 

				<div class="message" style="display:flex;width:750px;padding-bottom: 50px;">
					<button style="background: none;border: none;outline: none;display: flex;">
					<div class="user_image" style="width: 45px;height: 45px;cursor: pointer;margin: 0 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
						<img height="45" width="45" src="/finalp/resources/img/emma.jpg" style="display: block;margin-left: auto;margin-right: auto;">
					</div>
				   </button>
				   <p>content dienlvnso soenvkd slaiencl  eonvieonvon vnod</p>
				   <div style="margin-top:1%;position: absolute;left: 87%;">
					   <select id="example3">
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="4">4</option>
						  <option value="5">5</option>
						</select>
					</div>
				</div>

				<div class="message" style="display:flex;width:750px;padding-bottom: 50px;">
					<button style="background: none;border: none;outline: none;display: flex;">
					<div class="user_image" style="width: 45px;height: 45px;cursor: pointer;margin: 0 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
						<img height="45" width="45" src="/finalp/resources/img/emma.jpg" style="display: block;margin-left: auto;margin-right: auto;">
					</div>
				   </button>
				   <p>content dienlvnso soenvkd slaiencl  eonvieonvon vnod</p>
				   <div style="margin-top:1%;position: absolute;left: 87%;">
					   <select id="example4">
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="4">4</option>
						  <option value="5">5</option>
						</select>
					</div>
				</div>


			</div><!--col-md-7-->


			<div class="col-md-5" style="width: 35%;float: right;">
			<br>
			<form action="#">
				<div class="input-group mb-3">
				  <div class="input-group-prepend">
					<span class="input-group-text" id="basic-addon1">@제목</span>
				  </div>
				  <input type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
				</div>
				<br>
				<div class="input-group mb-3">
				  <div class="input-group-append">
					<span class="input-group-text" id="basic-addon2">@강사님께 쪽지보내기</span>
				  </div>
				</div>
				<textarea class="form-control" aria-label="With textarea" rows="10"></textarea>
				<br>
				<button type="submit" class="btn btn-primary" style="float:right">쪽지보내기</button>
				</div>
				
			</form>

			</div>
	</section>
	




	<hr>

</div><!-- container about -->


	<!-- 별점플러그인 관련 스크립트 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="/finalp/resources/js/jquery.barrating.min.js"></script>
	<script type="text/javascript">
	   $(function() {
		  $('#example').barrating({
			theme: 'fontawesome-stars'
		  });
		   $('#example2').barrating({
			theme: 'fontawesome-stars'
		  });
		  $('#example3').barrating({
			theme: 'fontawesome-stars'
		  });
		  $('#example4').barrating({
			theme: 'fontawesome-stars'
		  });
	   });
	</script>

<script>
		window.onscroll = function() {myFunction2()};

		var navbar = document.getElementById("navbar");
		var sticky = navbar.offsetTop;

		function myFunction2() {
		  if (window.pageYOffset >= sticky) {
			navbar.classList.add("sticky")
		  } else {
			navbar.classList.remove("sticky");
		  }
		}
</script>
</div>


</body>
</html>