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
						<img height="80" width="80" src="/finalp/resources/img/emma.jpg" style="display: block;margin-left: auto;margin-right: auto;">
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
						<li>과제 &nbsp; 0개</li>
						<li><i class="xi-minus-thin  xi-rotate-90 xi-3x"></i></li>
						<li>시험 &nbsp;	 0개</li>
					</ul>
				</div>
				
				<div class="studentApply">
					<div><i id="applyTitle" class="xi-view-list xi-2x" style="float:left; color: gray;"></i><p class = "historytitle" style="margin-bottom:20px; color: gray;">&nbsp; 수강 신청</p></div>
						
					<table class = "table table-bordered table-hover" align="center" border="1" cellspacing="0" width="700px">
						<tr align="center" height="35px" ><th style="text-align:center; color:gray;" width="80px">번호</th><th style="text-align:center; color:gray;" width="200px">신청자</th><th style="text-align:center; color:gray;">상태</th></tr>		
						<%
							int selectNum = 1;
							int acceptNum = 1;
						%>
						<c:forEach var="member" items="${list }">
								<tr align="center">
									<td align="center"><%= acceptNum++ %></td>
									<td align="center"><a href="#" data-toggle="modal" data-target="#memprofile">${member.mem_name}</a></td>
									
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
							<c:param name="currentPage" value="${startPage - limit }" />
							<c:param name="tutor_no" value="${tutor_no }"/>
						</c:url>
						<a href="${prev }">	[prev]</a>
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
							<c:param name="currentPage" value="${endPage + limit }" />
							<c:param name="tutor_no" value="${tutor_no }"/>
						</c:url>
						<a href="${next }">	[next]</a>
						<c:url var="last" value="classManage.do">
							<c:param name="currentPage" value="${maxPage }" />
							<c:param name="tutor_no" value="${tutor_no }"/>
						</c:url>
						<a href="${last }">[맨끝]</a>
					</div>
					
					<!-- test 삭제 모달 시작 -->
					<div class="modal fade" width="600px" height="800px" id="memprofile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content" style="border-radius: 3px;">
								<div class="modal-header" style="border-bottom:0">
									<div style="text-align:center; font-size: 20px;font-weight: 400;margin-bottom: 20px;">기본 정보</div>  
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<div class="tablethr">
										<div class="tableone">이름(실명)</div>
										<div class="tabletwo">${Member.mem_name }</div>
									</div>
									<div class="tablethr">
										<div class="tableone">아이디</div>
										<div class="tabletwo">${Member.mem_id }</div>
									</div>
									<div class="tablethr" style="height:200px;">
										<div class="tableone"style="padding-top: 80px;">사진</div>
										<div class="tableimg">
											<div>
												<c:if test="${Member.mem_refile eq null || Member.mem_refile eq ''}">
													<img src="/finalp/resources/img/profileupload/default-user.png"/>
												</c:if>
												<c:if test="${Member.mem_refile ne null && Member.mem_refile ne ''}">
													<img src="/finalp/resources/img/profileupload/${Member.mem_refile }" id="userimg" >
										            <img src="/finalp/target/m2e-wtp/web-resources/uploadFiles/${Member.mem_refile }" id="userimg" >
												</c:if>
											</div>
											<div style="margin-left:10px;margin-top:10px;">
												<form id="file-form" method="post" enctype="multipart/form-data" action="">
													<div class="filebox bs3-primary preview-image">
														<input type="file" id="input_file" name="userimgfile" style="display:none;" class="upload-hidden">
														<br><br>
													</div>
												</form>
											</div>
										</div>
									</div>
									<div class="tablethr">
										<div class="tableone">전공분야</div>
										<div class="tabletwo" style="display:  inline-flex;">
											<div class="tablefive">
												Spring
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
		            <!-- test 삭제 모달 끝 -->
					
					<!-- Large modal -->
					<%-- <div id="memprofile222222"class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				  		<div class="modal-dialog modal-lg">
						    <div class="modal-content">
						     <!-- === BEGIN STU_PROFILE ===  -->

								<section style="padding-top: 20px;">
									<div class="largeboxone" style="margin-top: 40px;">
										<div style="margin: 20px;">
											<div style="font-size: 20px;font-weight: 400;margin-bottom: 20px;">기본 정보
												<c:if test="${Member.mem_cate eq 'S'}">
												(학생회원)
												</c:if>
												<c:if test="${Member.mem_cate eq 'T'}">
												(강사회원)
												</c:if>
											</div>   
											<div class="tablethr">
												<div class="tableone">이름(실명)</div>
												<div class="tabletwo">${Member.mem_name }</div>
											</div>
											<div class="tablethr">
												<div class="tableone">아이디</div>
												<div class="tabletwo">${Member.mem_id }</div>
											</div>
											<div class="tablethr" style="height:200px;">
												<div class="tableone"style="padding-top: 80px;">사진</div>
												<div class="tableimg">
													<div>
														<c:if test="${Member.mem_refile eq null || Member.mem_refile eq ''}">
															<img src="/finalp/resources/img/profileupload/default-user.png"/>
														</c:if>
														<c:if test="${Member.mem_refile ne null && Member.mem_refile ne ''}">
															<img src="/finalp/resources/img/profileupload/${Member.mem_refile }" id="userimg" >
															             <img src="/finalp/target/m2e-wtp/web-resources/uploadFiles/${Member.mem_refile }" id="userimg" >
														</c:if>
													</div>
													<div style="margin-left:10px;margin-top:10px;">
														<form id="file-form" method="post" enctype="multipart/form-data" action="">
															<div class="filebox bs3-primary preview-image">
																<label for="input_file" class="btn btn-green">업로드</label>
																<input class="btn btn-green" type="button" id="userimginit" onclick ="initImg();" value = "기본이미지">
																<input type="file" id="input_file" name="userimgfile" style="display:none;" class="upload-hidden">
																<br><br>
															</div>
														</form>
													</div>
												</div>
											</div>
											
											<div class="tablethr">
												<div class="tableone">전공분야</div>
												<div class="tabletwo" style="display:  inline-flex;">
													<div class="tablefive">
														<input type="text" name="mem_inter" id="mem_inter" list="interestValues" placeholder="전공 선택해주세요" value="${Member.mem_inter }">
														<div class="input-group">
															<datalist id="interestValues">
																<option value="CSS"/>
																<option value="HTML"/>
																<option value="JSP" />
																<option value="ORACLE" />
																<option value="JAVA" />
																<option value="C++" />
																<option value="SPRING" />
															</datalist>   
														</div>
													</div>
													<div class="tablefive">
														<input type="button" onclick="checkinter();" value = "전공변경" style="margin-left: 10px;">
													</div> 
												</div>
											</div>
										</div>
									</div>
								</section>
						   
						   
						    </div>
				  		</div>
					</div>
					 --%>
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
</script>
</body>
</html>