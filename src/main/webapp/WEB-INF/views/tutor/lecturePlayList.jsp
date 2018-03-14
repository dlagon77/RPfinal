<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lecture play list</title>
  <style>
	
	#container{
		width: 1000px;
		margin: auto;
	}
	
	#container p{
		display: inline; 
		vertical-align: top; 
		padding-top: 25px; 
		font-weight: 700;
	}
	
	#container img{
		margin-bottom: 30px;
	}
	
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
	
	
  </style>
  <script type="text/javascript" src="/finalp/resources/js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="/finalp/resources/js/lecturePlayList.js"></script>
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
				<h3 style="font-size: 2.6rem;font-weight: 400;line-height: 3rem;margin-top: 30px;padding-left: 10px;">${Lecture.mem_name }</h3>
				<h5 style="padding-left:10px;color:gray">수강생 ${Lecture.apply_count }명</h5>
			</div>

			<div style="margin-left: 75%;margin-top: 25px;">
			<button class="applyButton">수강신청</button>
			</div>


		</div>
		
		
		

	</div>

	<div id="navbar" style="z-index:99;width:100%;height:48px;background-color: hsla(0, 0%, 97%, 1);text-align:center; font-size:14px">
		<div class="container about" style="display:flex;">
			<nav class="navbar sticky-top navbar-light bg-light" style="display:flex">
			  <a href="tutorHome.do?tutor_no=${tutor_no }" class="navbar-brand" style="width:120px;color:gray"><span class="a">Home</span></a>
			  <a href="lecturePlayList.do?tutor_no=${tutor_no }" class="navbar-brand" style="width:120px;color:gray"><span class="a">강의</span><div class="selected"></div></a>
			  <a href="taskList.do?tutor_no=${tutor_no }" class="navbar-brand" style="width:120px;color:gray"><span class="a">과제</span></a>
			  <a href="#" class="navbar-brand" style="width:120px;color:gray"><span class="a">Test</span></a>
			  <a href="#" class="navbar-brand" style="width:120px;color:gray"><span class="a"></span></a>

			  <form style="margin-top:7px;display:flex">
			  <span class="a"><button type="submit" class="searchButton" style="outline:none"><img src="/finalp/resources/img/search.png" style="padding: 5px 30px;cursor:pointer"></button></span>
				  <input class="searchLecture" type="text" placeholder="검색" style="height: 35px;width: 150px;background: transparent;margin-left: -30px;">
				</form>

			</nav>
		</div>
		</div>
	
	<div id="container">
		<ul id="results" style="list-style:none;"></ul>
	</div>
	
</body>
</html>