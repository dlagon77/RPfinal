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
	.menu ul li{margin-left: 50px;}
	ul li a{text-decoration: none; }
	ul li a p{display: inline; font-size: 17px; font-family: 'Nanum Gothic', sans-serif; color: gray;	}
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
		height: 700px;
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
		margin-left: 507px;	
	}
	.summary{
		margin-left: 60px;
		margin-top: 30px;
	}
	
	.summary-ul li{
		display: inline;
		padding: 0px 10px;
		color: gray;
	}
	.summary-ul i{vertical-align: middle;}
	#applyTitle{margin-left: 10px;} 
	.studentApply{margin-top: 50px;}
	.studentApplyTable{border: 1px solid #c6c6c6}
	
	.closeButton {
		border: none;
	    outline: none;
	    color: #2196f3;
	    background: none;
	    font-size: 14px;
	    margin-right: 20px;
		
	}
	.closeButton:hover{
		font-weight:bold;
	}
	.tabletwo{
		display: inline-block;
	}
	
	.header-title{
		text-align: center;
	}
</style>

<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script" rel="stylesheet">
</head>
<body>
<c:import url="../header.jsp" />
	<div class="wrap">
		<div class="container" style="padding-top: 20px;">	
			
			<div class="sideMenu">
			
				<h1 class="title" ><i class="xi-label"></i>&nbsp;강의실 관리</h1>
				<hr>
				<div class="menu">
					<ul>
						
						<li><a href="classManage.do?tutor_no=${tutor_no }"><i style="color: black;" class="xi-layout-aside-o xi-2x"></i><p style="color: black;">&nbsp;&nbsp;대쉬보드</p></a></li>
						<hr/>
						<li><a href="classManageLecture.do?tutor_no=${tutor_no }"><i class="xi-play-circle-o xi-2x"></i><p>&nbsp;&nbsp;강의</p></a></li>
						<hr/>
						<li><a href="classManageTask.do?tutor_no=${tutor_no }"><i class="xi-library-books-o xi-2x"></i><p>&nbsp;&nbsp;과제</p></a></li>
						<hr/>
						<li><a href="classManageTest.do?tutor_no=${tutor_no }"><i class="xi-documents-o xi-2x"></i><p>&nbsp;&nbsp;시험</p></a></li>
						<hr/>
						<li><a href="classManageStudent.do?tutor_no=${tutor_no }"><i class="xi-man xi-2x"></i><p>&nbsp;&nbsp;수강생</p></a></li>
					</ul>
				</div>
			</div>
			
			<div class="header">
				<div class="profile" style="height: 96px;position: relative; display: inline-block; floar:left;">
					<div class="user_image" style="width: 80px;height: 80px;margin: 20px 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
						<img height="80" width="80" src="/finalp/resources/img/profileupload/${Lecture.mem_refile }" style="display: block;margin-left: auto;margin-right: auto;">
					</div>
				</div>

				<div class="tutorname">
					<h3 style="font-size: 2.6rem;font-weight: 400;line-height: 3rem;margin-top: 30px;padding-left: 10px;color:black!important">${ Lecture.mem_name }</h3>
				</div>
				
				<!-- <div class="student">
					<h5 style="padding-left:10px">수강생  25명</h5>				
				</div> -->
				<div class="home-btn">
					<a href="tutorHome.do?tutor_no=${tutor_no}&mem_no=${loginUser.mem_no}"><i class="xi-home xi-3x"></i></a>
				</div>
			</div>
			
			<div class="content">
				<div class="summary">
					<ul class="summary-ul">
						<li>동영상 &nbsp; ${lectureCount }개</li>
						<li><i class="xi-minus-thin  xi-rotate-90 xi-3x"></i></li>
						<li>수강생&nbsp;  ${ Lecture.apply_count }명</li>
						<li><i class="xi-minus-thin  xi-rotate-90 xi-3x"></i></li>
						<li>과제 &nbsp; ${assCount }개</li>
						<li><i class="xi-minus-thin  xi-rotate-90 xi-3x"></i></li>
						<li>시험 &nbsp; ${testCount }개</li>
					</ul>
				</div>
				
				<div class="studentApply">
					<div><i id="applyTitle" class="xi-view-list xi-2x" style="float:left; color: gray;"></i><p class = "historytitle" style="margin-bottom:20px; color: gray;">&nbsp; 수강 신청</p></div>
						
					<table class = "table table-bordered table-hover" align="center" border="1" cellspacing="0" width="700px">
						<tr align="center" height="35px" ><th style="text-align:center; color:gray;" width="80px">번호</th><th style="text-align:center; color:gray;" width="200px">신청자</th><th style="text-align:center; color:gray;">상태</th></tr>		
						<%
							int selectNum = 1;
							int acceptNum = 1;
							int modalNum = 1;
						%>
						<c:forEach var="member" items="${list }">
								<tr align="center">
									<td align="center"><%= acceptNum++ %></td>
									<td align="center"><a href="#" data-toggle="modal" data-target="#memprofile<%= modalNum %>" data-toggle="tooltip" data-placement="top" title="회원정보 상세보기"">${member.mem_name}</a></td>
									
									<td>
										<form action="applyClass.do" method="post">									
											<input type="hidden" name="selectNum" value="<%=selectNum%>">
											
											<input type="hidden" name="mem_name" value="${ member.mem_name }">
											
											<input type="hidden" name="tutor_no" value="${ tutor_no }">
											
											<label class="checkbox-inline"> 
												<input type="checkbox" id="accept" name="select<%= selectNum %>" value="수락"> 수락 
											</label> 
											<label class="checkbox-inline" style="margin-left: 50px;"> 
												<input type="checkbox" id="reject" name="select<%= selectNum++ %>" value="거절"> 거절 
											</label>
	
											<div style="float:right">
												<input type="submit" class="btn btn-warning btn-xs" value="확정하기" align="right">
											</div>
										</form>
									</td>
									
								</tr>
								<!-- 회원 상세정보 모달  -->
								<div class="modal fade" id="memprofile<%= modalNum++ %>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content" style="border-radius: 3px;">
											<div class="modal-header" style="border-bottom:0">
												<div class="header-title">
													<h2 class="detail-title"><i class="xi-profile xi-x"></i>&nbsp;회원 상세보기</h2>
													<button type="button" class="close" aria-label="Close" data-dismiss="modal">
														<span aria-hidden="true" style="color:gray;">&times;</span>
													</button>
												</div>
											</div>
											<div class="modal-body">
												<div class="profile-id">
													<div class="form-group"> 
														<label class="col-sm-2 control-label">ID</label> 
														<div class="col-sm-10"> 
															<p class="form-control-static">${ member.mem_id }</p> 
														</div> 
													</div>
												</div>
												<div class="profile-name">
													<div class="form-group"> 
														<label class="col-sm-2 control-label">이름</label> 
														<div class="col-sm-10"> 
															<p class="form-control-static">${ member.mem_name }</p> 
														</div> 
													</div>
												</div>
												<div class="profile-age">
													<div class="form-group"> 
														<label class="col-sm-2 control-label">나이</label> 
														<div class="col-sm-10"> 
															<p class="form-control-static">${ member.mem_age }</p> 
														</div> 
													</div>
												</div>
												<div class="profile-gender">
													<div class="form-group"> 
														<label class="col-sm-2 control-label">성별</label> 
														<div class="col-sm-10"> 
															<c:if test="${ member.mem_gen eq 'F' }">
																<p class="form-control-static">여자</p> 															
															</c:if>
															<c:if test="${ member.mem_gen eq 'M' }">
																<p class="form-control-static">남자</p> 															
															</c:if>
														</div> 
													</div>
												</div>
												<div class="profile-gender">
													<div class="form-group"> 
														<label class="col-sm-2 control-label">관심</label> 
														<div class="col-sm-10"> 
															<p class="form-control-static">${ member.mem_inter }</p> 
														</div> 
													</div>
												</div>
											</div>
												
											<div class="modal-footer"  style="border-top:0;padding-top:0">
												<button type="button" class="closeButton" data-dismiss="modal">닫기</button>
											</div>
										</div>
									</div>
								</div>
								<!-- 회원 상세정보 모달  끝-->
						</c:forEach>
					
					</table>
					
					<!-- 페이지 번호 처리 -->
					<div style="text-align:center;">
						<c:url var="first" value="classManage.do">
							<c:param name="currentPage" value="1" />
							<c:param name="tutor_no" value="${tutor_no }"/>
						</c:url>
						<a href="${first }">[맨처음]</a>
						<c:url var="prev" value="classManage.do">
							<c:param name="currentPage" value="1" />
							<c:param name="tutor_no" value="${tutor_no }"/>
						</c:url>
						<c:if test="${currentPage != 1 }">
							<a href="${prev }">	[prev]</a>
						</c:if>
						<c:forEach var="p" begin="${startPage }" end="${endPage }" step="1">
							<c:url var="page" value="classManage.do">
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
						<c:url var="next" value="classManage.do">
							<c:param name="currentPage" value="${currentPage + 1 }" />
							<c:param name="tutor_no" value="${tutor_no }"/>
						</c:url>
						<c:if test="${currentPage != endPage }">
							<a href="${next }">	[next]</a>
						</c:if>
						
						<c:url var="last" value="classManage.do">
							<c:param name="currentPage" value="${maxPage }" />
							<c:param name="tutor_no" value="${tutor_no }"/>
						</c:url>
						<a href="${last }">[맨끝]</a>
					</div>
					
					
					
					
					
				</div>
			</div>
					
		</div>
	</div>
	
<script type="text/javascript">
	//체크박스가 하나만 클릭될수 있도록 처리
	$(document).ready(function() {
	    $('input[type="checkbox"][name="select"]').click(function(){
	        if ($(this).prop('checked')) {
	            $('input[type="checkbox"][name="select"]').prop('checked', false);
	            $(this).prop('checked', true);
	        }
	    });
	});
	
	//툴팁처리
	$(function () {
		  $('[data-toggle="tooltip"]').tooltip()
	})
</script>
</body>
</html>