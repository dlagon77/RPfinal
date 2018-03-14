<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tutor Home</title>
<style type="text/css">
	#navbar{
		 overflow: hidden;
	}
	.sticky{
		position: fixed;
		top: 60px;
		width: 100%
	}
	.navbar-brand{
			font-size:16px!important;
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
		
		#deapply{
			background-color: hsl(0, 0%, 93.3%);
			color: hsla(0, 0%, 6.7%, .6);
			visibility:hidden;
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
			<div class="col-lg-9" style="display: inline-flex">
				<div class="profile" style="height: 96px;position: relative; display: inline-block; floar:left;">
					<div class="user_image" style="width: 80px;height: 80px;margin: 20px 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
						<img height="80" width="80" src="/finalp/resources/img/emma.jpg" style="display: block;margin-left: auto;margin-right: auto;">
					</div>
				</div>

				<div class="desc">
					<h3 style="font-size: 2.6rem;font-weight: 400;line-height: 3rem;margin-top: 30px;padding-left: 10px;color:black!important">${Lecture.mem_name }</h3>
					<h5 style="padding-left:10px;color:gray!important">수강생 ${Lecture.apply_count }명</h5>
				</div>
				
				<c:if test="${loginUser.mem_no eq tutor_no }">
				<div style="margin-top: 25px;margin-left:10px">
					<button style="border: 0;outline: 0;background-color: hsla(0, 0%, 97%, 1);">
						<img height="40" width="50" src="/finalp/resources/img/setting1.png">
					</button>
				</div>
				</c:if>
				
			</div>
			<div class="col-lg-3">
				<div style="margin-left: 75%;margin-top: 25px;">
					<button id="apply" class="applyButton" onclick="document.getElementById('deapply').style.visibility='visible'">수강신청</button>
					<button id="deapply" class="applyButton">수강중 4명</button>
				</div>
			</div>
		</div>

	</div>

	<div id="navbar" style="z-index:99;width:100%;height:48px;background-color: hsla(0, 0%, 97%, 1);text-align:center; font-size:14px">
		<div class="container about" style="display:flex;">
			<nav class="navbar sticky-top navbar-light bg-light" style="display:flex">
			  <a href="tutorHome.do?tutor_no=${tutor_no }" class="navbar-brand" style="width:120px;color:gray"><span class="a">Home</span><div class="selected"></div></a>
			  <a href="lecturePlayList.do?tutor_no=${tutor_no }" class="navbar-brand" style="width:120px;color:gray"><span class="a">강의</span></a>
			  <a href="taskList.do?tutor_no=${tutor_no }" class="navbar-brand" style="width:120px;color:gray"><span class="a">과제</span></a>
			  <a href="#" class="navbar-brand" style="width:120px;color:gray"><span class="a">Test</span></a>

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
				<iframe width="734" height="400" src="https://www.youtube.com/embed/${Lecture.lec_link }" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
				
					<p style="font-size:14px;color:gray;float:right">
						조회수 ${Lecture.lec_readcount }회
					</p>
					<br>
				</div>
				<div class="col-md-5">
					<h4>${Lecture.lec_title }</h4>
					<br>
					<p>
						${Lecture.lec_con }
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
	<h4>평가 ${reviewCount }개</h4>
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
						<input type="text" class="messageInput" id="inputAddress" placeholder="리뷰 추가" style="border:none;outline:none;border-bottom: solid 1px black;width:100%">
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

				<c:forEach items="${review }" var="row">
				<!-- 댓글 리스트 폼 -->
				<div class="message" style="display:flex;width:750px;padding-bottom: 50px;">
					<button style="background: none;border: none;outline: none;display: flex;">
					<div class="user_image" style="width: 45px;height: 45px;cursor: pointer;margin: 0 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
						<img height="45" width="45" src="/finalp/resources/img/${row.mem_refile }" style="display: block;margin-left: auto;margin-right: auto;">
					</div>
				   </button>
				   <p>${row.rev_con }</p>
				   <div style="margin-top:1%;position: absolute;left: 87%;">
					   <select id="p${row.rev_no }">
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="4">4</option>
						  <option value="5">5</option>
						</select>
					</div>
				</div>
				<!-- 댓글 리스트 폼 끝--> 
				
				</c:forEach>

				


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
	
	<!-- 수강신청 ajax -->
	<script type="text/javascript">
   $(function(){
      $('#apply').on("click", function(){
         //alert("테스트1 버튼 클릭됨!");
         $.ajax({
        	 url: "apply.do",
        	 data: {st_no : ${loginUser.mem_no}, tutor_no : ${tutor_no}},
        	 type: "post",
        	 success: function(result){
        		 if(result == "ok")
        			 alert("전송 성공!");
        		 else
        			 alert("전송 실패!");
        	 },
        	 error: function(request, status, errorData){
        		 alert("error code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + errorData);
        	 }
         });
         
      });
      </script>
	
	
	
	<c:forEach items="${review }" var="row">
	<script type="text/javascript">
	
	   $(function() {
		  $('#p${row.rev_no}').barrating({
			theme: 'fontawesome-stars',
			readonly : true,
			initialRating : ${row.rev_star}
			
		  });
	   });
	   
	</script>
	</c:forEach>
	<script type="text/javascript">
	   $(function() {
		   $('#example').barrating({
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