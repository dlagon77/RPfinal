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
		height: 889px;
		margin-left: auto;
		margin-right: auto;
		display: block;
	}
	.sideMenu{
		width: 250px;
		height: 500px;
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
		height: 600px;
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
</style>

<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script" rel="stylesheet">
</head>
<body>
<c:import url="../header.jsp" />
	<div class="wrap">
		<div class="container">	
			
			<div class="sideMenu">
			
				<h1 class="title" >[강의실 관리]</h1>
				<hr>
				<div class="menu">
					<ul>
						
						<li><a href="classManage.do"><i class="xi-layout-aside-o xi-2x"></i><p>&nbsp;&nbsp;대쉬보드</p></a></li>
						<hr/>
						<li><a href="classManageLecture.do"><i class="xi-play-circle-o xi-2x"></i><p>&nbsp;&nbsp;강의</p></a></li>
						<hr/>
						<li><a href="#"><i class="xi-library-books-o xi-2x"></i><p>&nbsp;&nbsp;과제</p></a></li>
						<hr/>
						<li><a href="#"><i class="xi-documents-o xi-2x"></i><p>&nbsp;&nbsp;시험</p></a></li>
						<hr/>
						<li><a href="#"><i class="xi-man xi-2x"></i><p>&nbsp;&nbsp;수강생</p></a></li>
					</ul>
				</div>
			</div>
			
			<div class="header">
				<div class="profile" style="height: 96px;position: relative; display: inline-block; floar:left;">
					<div class="user_image" style="width: 80px;height: 80px;margin: 20px 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
						<img height="80" width="80" src="/finalp/resources/img/emma.jpg" style="display: block;margin-left: auto;margin-right: auto;">
					</div>
				</div>

				<div class="tutorname">
					<h3 style="font-size: 2.6rem;font-weight: 400;line-height: 3rem;margin-top: 30px;padding-left: 10px;color:black!important">김재석</h3>
				</div>
				
				<div class="student">
					<h5 style="padding-left:10px">수강생  25명</h5>				
				</div>
				<div class="home-btn">
					<a href="tutorHome.do"><i class="xi-home xi-3x"></i></a>
				</div>
			</div>
			
			<div class="content">
				<div class="summary">
					<ul class="summary-ul">
						<li>동영상 &nbsp; 0개</li>
						<li><i class="xi-minus-thin  xi-rotate-90 xi-3x"></i></li>
						<li>수강생&nbsp;  0명</li>
						<li><i class="xi-minus-thin  xi-rotate-90 xi-3x"></i></li>
						<li>과제 &nbsp; 0개</li>
						<li><i class="xi-minus-thin  xi-rotate-90 xi-3x"></i></li>
						<li>시험 &nbsp;	 0개</li>
					</ul>
				</div>
				
				<div class="studentApply">
					<div><i id="applyTitle" class="xi-view-list xi-2x" style="float:left; color: gray;"></i><p class = "historytitle" style="margin-bottom:20px; color: gray;">&nbsp; 수강 신청</p></div>
						
					<table class = "studentApplyTable" align="center" border="1" cellspacing="0" width="700px">
						<tr align="center" height="35px" ><th style="text-align:center; color:gray;" width="80px">번호</th><th style="text-align:center; color:gray;" width="200px">신청자</th><th style="text-align:center; color:gray;">상태</th></tr>		
						<%
							int selectNum = 1;
							int acceptNum = 1;
						%>
							<tr align="center">
								<td align="center"><%= acceptNum++ %></td>
								<td align="center"><a href="javasciprt:('준비중입니다.');"></a></td>
								
								<td>
									<form action="/doubleb/matchinghistoryupdate" method="post">
										<input type="hidden" name="mnoa" value="">
										<input type="hidden" name="num" value="<%= selectNum%>">
										<input type="hidden" name="matchingno" value="">
										<input type="hidden" name="mno" value="">
										
											
										<input type="radio" id="accept" name="select<%= selectNum %>" value="수락">&nbsp;수락
										<input type="radio" id="reject" name="select<%= selectNum++ %>" value="거절" style="margin-left:60px; margin-top:5px;">&nbsp;거절
										
										<div style="float:right">
											<input type="submit" value="확정하기" align="right">
										</div>
										
									</form>
								</td>
								
							</tr>
					
					</table>
						
				</div>
			</div>
					
		</div>
	</div>
</body>
</html>