<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의실 관리</title>

<style>
	th{align:center;}
	ul{list-style: none;}
	ul li a{text-decoration: none;}
	ul li a p{display: inline; font-size: 16px; font-family: 'Nanum Gothic', sans-serif; color: gray;	}
 	ul li a:hover i, ul li a:hover p{color: black;}
	ul li a i{ vertical-align: bottom; color: gray;}

	.wrap{
		width: 100%;
		background-color: hsla(0, 0%, 93.3%, .4);
	}	
	.container{
		width:1000px;
		height: 1000px;
		margin-left: auto;
		margin-right: auto;
		display: block;
	}
	.sideMenu{
		width: 250px;
		height: 455px;
		background-color: white;
		float: left;	
	}
	.menu{
		width: 250px;
		margin-top: 30px;
		background-color: white;	
	}
	.header{
		width: 800px;
		height: 120px;
		background-color: white;
		display: inline-block;
		margin-left: 25px;
	}
	.content{
		width: 800px;
		height: 850px;
		background-color: white;
		display: inline-block;
		margin-left: 25px;
		margin-top: 10px;
	}
	.title{
		font-size: 28px;
		font-family: 'Nanum Gothic', sans-serif;
		font-weight: 500;
		text-align: center;
		vertical-align: middle;
	}
	.tutorname{ display: inline-block;}
	.student{display: inline-block;}
	.profile{vertical-align: middle;}
	.home-btn{
		display: inline-block;
		vertical-align: bottom;
		margin-left: 430px;	
	}
	.summary{
		margin-left: 30px;
		margin-top: 30px;
	}
	
	.summary-ul li{
		display: inline;
		padding: 0px 10px;
		color: gray;
	}
	.summary-ul i{vertical-align: middle;}
	#applyTitle{margin-left: 50px;}
	.studentApply{margin-top: 50px;}
	.studentApplyTable{border: 1px solid #c6c6c6}
	
	.uploadExplain{
		margin-top: 20px;
		margin-left:50px;
	}
	.uploadBox{
		margin: 30px 0px 30px 320px;
	}
	
	/* ---------- */
	.tabs {
		position: relative;
		overflow: hidden;
		margin: 0 auto;
		width: 100%;
		font-weight: 300;
		font-size: 1.25em;
	}
	.tabs nav {
	text-align: center;
	}
	
	.tabs nav ul {
		position: relative;
		display: -ms-flexbox;
		display: -webkit-flex;
		display: -moz-flex;
		display: -ms-flex;
		display: flex;
		margin: 0 auto;
		padding: 0;
		max-width: 1200px;
		list-style: none;
		-ms-box-orient: horizontal;
		-ms-box-pack: center;
		-webkit-flex-flow: row wrap;
		-moz-flex-flow: row wrap;
		-ms-flex-flow: row wrap;
		flex-flow: row wrap;
		-webkit-justify-content: center;
		-moz-justify-content: center;
		-ms-justify-content: center;
		justify-content: center;
	}
	
	.tabs nav ul li {
		position: relative;
		z-index: 1;
		display: block;
		margin: 0;
		text-align: center;
		-webkit-flex: 1;
		-moz-flex: 1;
		-ms-flex: 1;
		flex: 1;
	}
	
	.tabs nav a {
		position: relative;
		display: block;
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap;
		line-height: 2.5;
	}
	
	.tabs nav a span {
		vertical-align: middle;
		font-size: 0.75em;
	}
	
	.tabs nav li.tab-current a {
		color: #74777b;
	}
	
	.tabs nav a:focus {
		outline: none;
	}
	.tabs-style-bar nav {
	background: rgba(40,44,42,0.05);
	}
	
	.tabs-style-bar nav ul {
		border: 4px solid transparent;
	}
	
	.tabs-style-bar nav ul li a {
		margin: 0 2px;
		background-color: #f7f7f7;
		color: #74777b;
		transition: background-color 0.2s, color 0.2s;
	}
	
	.tabs-style-bar nav ul li a:hover,
	.tabs-style-bar nav ul li a:focus {
		color: #2CC185;
	}
	
	.tabs-style-bar nav ul li a span {
		text-transform: uppercase;
		letter-spacing: 1px;
		font-weight: 500;
		font-size: 0.6em;
	}
	
	.tabs-style-bar nav ul li.tab-current a {
		background: #2CC185;
		color: #fff;
	}
</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript"></script>
<script>
	function showDiv1(){
		$("#section1").attr("style", "display:block");
		$("#section2").attr("style", "display:none");
/* 		$("#section3").attr("style", "display:none"); */
	}
	
	function showDiv2(){
		$("#section1").attr("style", "display:none");
		$("#section2").attr("style", "display:block");
/* 		$("#section3").attr("style", "display:none");  */
	}
	
		
/* 	function showDiv3(){
		$("#section1").attr("style", "display:none");
		$("#section2").attr("style", "display:none"); 
		$("#section3").attr("style", "display:block");
	} */
	
</script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script" rel="stylesheet">
</head>
<body>
<c:import url="../header.jsp" />
	<!-- 뒷 배경 -->
	<div class="wrap">
		
		<!-- 내용 들어가는 부분 -->	
		<div class="container">	
			
			<!-- 좌측 사이드 메뉴 -->
			<div class="sideMenu">
			
				<h1 class="title" >[강의실 관리]</h1>
				<hr>
				<div class="menu">
					<ul>
						
						<li><a href="classManage.do?tutor_no=${tutor_no}"><i class="xi-layout-aside-o xi-2x"></i><p>&nbsp;&nbsp;대쉬보드</p></a></li>
						<hr/>
						<li><a href="classManageLecture.do?tutor_no=${tutor_no}"><i class="xi-play-circle-o xi-2x"></i><p>&nbsp;&nbsp;강의</p></a></li>
						<hr/>
						<li><a href="classManageTask.do?tutor_no=${tutor_no }"><i class="xi-library-books-o xi-2x"></i><p>&nbsp;&nbsp;과제</p></a></li>
						<hr/>
						<li><a href="classManageTest.do?tutor_no=${tutor_no }"><i class="xi-documents-o xi-2x"></i><p>&nbsp;&nbsp;시험</p></a></li>
						<hr/>
						<li><a href="#"><i class="xi-man xi-2x"></i><p>&nbsp;&nbsp;수강생</p></a></li>
					</ul>
				</div>
			</div>
			
			<!-- 상단 정보 표시 -->
			<div class="header">
				<div class="profile" style="height: 96px;position: relative; display: inline-block; floar:left;">
					<div class="user_image" style="width: 80px;height: 80px;margin: 20px 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
						<img height="80" width="80" src="/finalp/resources/img/emma.jpg" style="display: block;margin-left: auto;margin-right: auto;">
					</div>
				</div>

				<div class="tutorname">
					<h3 style="font-size: 2.6rem;font-weight: 400;line-height: 3rem;margin-top: 30px;padding-left: 10px;color:black!important">${ Lecture.mem_name }</h3>
				</div>
				
				<div class="student">
					<h5 style="padding-left:10px">수강생  ${Lecture.apply_count }명</h5>				
				</div>
				<div class="home-btn">
					<a href="tutorHome.do?tutor_no=${tutor_no}&mem_no=${loginUser.mem_no}"><i class="xi-home xi-3x"></i></a>
				</div>
			</div>
			
			<!-- 하단 주요내용 -->
			<div class="content">
				
				<div class="tabs tabs-style-bar">
					<nav>
						<ul>
							<li><a href="#" name="item" onclick="showDiv1();" ><span>Overview</span></a></li>
							<li><a href="#" name="item" onclick="showDiv2();"><span>Upload</span></a></li>
<!-- 							<li><a href="#" name="item" onclick="showDiv3();"><span>Settings</span></a></li> -->
						</ul>
					</nav>
				</div>
				
				<div id="section1" style="display:block;">
				
				</div>
				
				<!-- 강의 업로드 -->
				<div id="section2" style="display:none;">
					<div class="uploadExplain">
						<img style="box-shadow: 0 10px 16px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19) !important;" width="700px;" height="350px;" src="/finalp/resources/img/lectureUpload.png">
						<br><br>
						<p style="font-weight:600; font-size: 14px;">1. 본인의 Youtube 채널에  강의를 먼저 등록해 주세요 <br>2. Youtube 업로드 하실 때 입력하신 속성(①videoID ②강의 제목 ③강의 설명)들을 아래 박스에도 그대로 써주세요:D <br>3. 강의 등록 버튼을 눌러주세요</p>
					</div>
					
					<!-- 업로드버튼 -->
					<div class="uploadBox">
						<!-- <a href="https://www.youtube.com/upload" target="blank"><i class="xi-folder-upload-o xi-4x"></i></a> -->
						<button  onclick="window.open('https://www.youtube.com/upload')" type="button" class="btn btn-danger btn-lg">Youtube 업로드</button>
					</div>
					
					<div>
						<form class="form-horizontal" role="form" action="insertLecture.do"> 
							<div class="form-group"> 
								<label for="inputPassword3" class="col-sm-2 control-label">비디오 ID</label> 
								<div class="col-sm-10"> 
									<input type="text" class="form-control" id="inputPassword3" name="lec_link" placeholder="1.videoID"> 
								</div> 
							</div>
							<div class="form-group"> 
								<label for="inputEmail3" class="col-sm-2 control-label">제목</label> 
								<div class="col-sm-10"> 
									<input type="text" class="form-control" id="inputEmail3" name="lec_title" placeholder="2.title"> 
								</div> 
							</div> 
							<div class="form-group"> 
								<label for="inputPassword3" class="col-sm-2 control-label">내용</label> 
								<div class="col-sm-10"> 
									<input type="text" class="form-control" id="inputPassword3" name="lec_con" placeholder="3.content"> 
								</div> 
							</div>
							
	
							<!-- <div class="form-group"> 
								<div class="col-sm-offset-2 col-sm-10"> 
									<div class="checkbox"> 
										<label> <input type="checkbox"> Remember me </label> 
									</div> 
								</div> 
							</div>  -->
							<input type="hidden" name ="tutor_no" value="${tutor_no}">
							<div class="form-group"> 
								<div class="col-sm-offset-2 col-sm-10"> 
									<button type="submit" class="btn btn-success">강의 등록</button>
									
									
								</div> 
							</div> 
						</form>
					</div>
					
				</div>
				<!-- 강의 업로드 끝 -->
				
					
				
			
			<!-- 하단 주요내용 끝 -->
			</div>
		
		
		</div>
	</div>
</body>
</html>