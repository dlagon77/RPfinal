<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의실 관리</title>

<style>
	
 /* ---------------------------------- */
 	th{align:center;}
	ul{list-style: none;}
	ul li{margin-left: 50px;}
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
		height: 420px;
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
		height: 540px;
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
	
	.deleteButton{
		border: none;
	    outline: none;
	    background: none;
	    color: gray;
	    font-size:14px;
	}
	.deleteButton:hover {
		color:#f44336;
	}
	.deleteButton2 {
		border: none;
	    outline: none;
	    background: none;
	    color: gray;
	    font-size:14px;
	    color: #2196f3;
	}
	
	.deleteStudentButton {
		border: none;
	    outline: none;
	    color: #f44336;
	    background: none;
	    font-size: 14px;
	    margin-right: 20px;
		
	}
	
	.deleteStudentButton:hover{
		font-weight:bold;
		
	}
	
	.deleteStudentButton2 {
		border: none;
	    outline: none;
	    color: #2196f3;
	    background: none;
	    font-size: 14px;
	    margin-right: 20px;
		
	}
	.deleteStudentButton2:hover{
		font-weight:bold;
		
	}
</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript"></script>

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
			
				<h1 class="title" ><i class="xi-label"></i>&nbsp;강의실 관리</h1>
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
						<li><a href="classManageStudent.do?tutor_no=${tutor_no }"><i style="color: black;" class="xi-man xi-2x"></i><p style="color: black;">&nbsp;&nbsp;수강생</p></a></li>
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
			
				<% int num = 1; %>
				<% int modalNum = 1;%>
				
				<div id="section1" style="display:block;">
					<table class="table table-bordered table-hover" align="center" border="1" cellspacing="0" width="700px">
						<tr><th style="text-align:center; color:gray;">번호</th><th style="text-align:center; color:gray;">이름</th><th style="text-align:center; color:gray;">아이디</th><th style="text-align:center; color:gray;">나이</th><th style="text-align:center; color:gray;">전화번호</th><th style="text-align:center; color:gray;">전공분야</th><th style="text-align:center; color:gray;">삭제</th></tr>
						
							<c:forEach var="member" items="${ list }">							
								<c:if test="${ member.mem_gen eq 'M' }">
									<tr align="center" style="background-color: #EFEFFB">
										<td align="center"><%= num++ %></td>
										<td align="center">
											<c:url var="studentDetail" value="#">
												<c:param name="currentPage" value="${currentPage }" />
												<c:param name="ass_no" value="${row.ass_no }" />
												<c:param name="tutor_no" value="${tutor_no }"/>
											</c:url>			
											<a href="${studentDetail}" name="title">${ member.mem_name }</a>
										</td>
										<td align="center">${ member.mem_id }</td>
										<td align="center">${ member.mem_age }</td>
										<td align="center">${ member.mem_phone }</td>
										<td align="center">${ member.mem_inter }</td>
										<td align="center">
											<button class="deleteButton" type="button" data-toggle="modal" data-target="#deleteTestModal<%=modalNum %>" name="test_no" value="">삭제</button>
											<c:url var="deleteClassStudent" value="deleteClassStudent.do">
												<c:param name="mem_no" value="${member.mem_no }"/>
												<c:param name="tutor_no" value="${tutor_no }"/>
											</c:url>
										</td>
									</tr>
								</c:if>
								<c:if test="${ member.mem_gen eq 'F' }">
									<tr align="center" style="background-color: #FBEFEF">
										<td align="center"><%= num++ %></td>
										<td align="center">
											<c:url var="studentDetail" value="#">
												<c:param name="currentPage" value="${currentPage }" />
												<c:param name="tutor_no" value="${tutor_no }"/>
											</c:url>			
											<a href="${studentDetail}" name="title">${ member.mem_name }</a>
										</td>
										<td align="center">${ member.mem_id }</td>
										<td align="center">${ member.mem_age }</td>
										<td align="center">${ member.mem_phone }</td>
										<td align="center">${ member.mem_inter }</td>
										<td align="center">
											<button class="deleteButton" type="button" data-toggle="modal" data-target="#deleteTestModal<%=modalNum %>" name="test_no" value="">삭제</button>
											<c:url var="deleteClassStudent" value="deleteClassStudent.do">
												<c:param name="mem_no" value="${member.mem_no }"/>
												<c:param name="tutor_no" value="${tutor_no }"/>
											</c:url>
										</td>
									</tr>
								</c:if>
								
								<!-- test 삭제 모달 시작 -->
								<div class="modal fade" id="deleteTestModal<%=modalNum++ %>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content" style="border-radius: 3px;">
											<div class="modal-header" style="border-bottom:0">
												<h4 class="modal-title" id="exampleModalLabel" style="font-weight:400">정말로 이 수강생을 삭제하시겠습니까?</h4>
												<button type="button" class="close" data-dismiss="modal" aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<span style="font-size:13px">수강생을 삭제하시게 되면 연관된 자료 또한 모두 삭제됩니다.</span>
											</div>
											<div class="modal-footer"  style="border-top:0;padding-top:0">
												<button type="button" class="deleteStudentButton" onclick="tdelete('${member.mem_no }','${tutor_no }')">수강생 삭제</button>
												<button type="button" class="deleteStudentButton2" data-dismiss="modal">취소</button>
											</div>
										</div>
									</div>
								</div>
					            <!-- test 삭제 모달 끝 -->
							</c:forEach>
						
					</table>
					
					
					
					<!-- 페이지 번호 처리 -->
					<div style="text-align:center;">
						<c:url var="first" value="classManageStudent.do">
							<c:param name="currentPage" value="1" />
							<c:param name="tutor_no" value="${tutor_no }"/>
						</c:url>
						<a href="${first }">[맨처음]</a>
						<c:url var="prev" value="classManageStudent.do">
							<c:param name="currentPage" value="${startPage - limit }" />
							<c:param name="tutor_no" value="${tutor_no }"/>
						</c:url>
						<a href="${prev }">	[prev]</a>
						<c:forEach var="p" begin="${startPage }" end="${endPage }" step="1">
							<c:url var="page" value="classManageStudent.do">
								<c:param name="currentPage" value="${p }" />
								<c:param name="tutor_no" value="${tutor_no }"/>
							</c:url>
							<c:if test="${p ne currentPage }">
								<a href="${page }">	| ${p } |&nbsp; </a> 
							</c:if>
							<c:if test="${p eq currentPage }">	
								<a href="${page }">	| <b>${p }</b> |&nbsp; </a>
							</c:if>
						</c:forEach>
						<c:url var="next" value="classManageStudent.do">
							<c:param name="currentPage" value="${endPage + limit }" />
							<c:param name="tutor_no" value="${tutor_no }"/>
						</c:url>
						<a href="${next }">	[next]</a>
						<c:url var="last" value="classManageStudent.do">
							<c:param name="currentPage" value="${maxPage }" />
							<c:param name="tutor_no" value="${tutor_no }"/>
						</c:url>
						<a href="${last }">[맨끝]</a>
					</div>
				</div>
				
				
			<!-- 하단 주요내용 끝 -->
			</div>
		
		
		</div>
	</div>
<script>
	function tdelete(mem_no,tutor_no){
		
		location.href="deleteClassStudent.do?mem_no="+mem_no+"&tutor_no="+tutor_no;
	}
</script>
</body>
</html>
