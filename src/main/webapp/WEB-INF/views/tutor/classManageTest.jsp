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
	
	.section-column section-column-padding{
		margin-top: 5px;
	    margin-bottom: 15px;
	    background-color: #fff;
	    border-radius: 2px;
	    /* box-shadow: 0 1px 3px rgba(0,0,0,.12), 0 1px 2px rgba(0,0,0,.24); */
	    transition: box-shadow .15s ease-in-out;
	    margin-top: 5px;
	    margin-bottom: 15px;
	    /* box-shadow: 0 1px 3px rgba(0,0,0,.12), 0 1px 2px rgba(0,0,0,.24); */
	    padding: 30px;
	}
	
	.input-block{
		    background-color: transparent;
		    color: #757575;
		    vertical-align: middle;
		    border-top: 0;
		    border-left: 0;
		    border-right: 0;
		    border-bottom: 1px solid #9e9e9e;
		    border-radius: 0;
		    width: 100%;
		    min-height: 45px;
		    font-weight: 400;
		    font-size: 16px;
		    outline: none;
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
	
	.deleteTestButton {
		border: none;
	    outline: none;
	    color: #f44336;
	    background: none;
	    font-size: 14px;
	    margin-right: 20px;
		
	}
	
	.deleteTestButton:hover{
		font-weight:bold;
		
	}
	
	.deleteTestButton2 {
		border: none;
	    outline: none;
	    color: #2196f3;
	    background: none;
	    font-size: 14px;
	    margin-right: 20px;
		
	}
	.deleteTestButton2:hover{
		font-weight:bold;
		
	}
	
	.control-label{
		width: 200px;
		display: table-cell;
		vertical-align: middle;
		padding: 8px 20px;
	}
	
	.control-input{
		display: table-cell;vertical-align: middle;padding: 8px 20px;
	}
	
.badge {
			display: inline-block!important;
			padding: .45em .5em!important;
			font-size: 75%!important;
			font-weight: 700!important;
			line-height: 1!important;
			text-align: center!important;
			white-space: nowrap!important;
			vertical-align: baseline!important;
			border-radius: .25rem!important;
		}

</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript"></script>
<script>
	function showDiv1(){
		$("#section1").attr("style", "display:block");
		$("#section3").attr("style", "display:none");
		$("#section4").attr("style", "display:none");
	}
	
	function showDiv3(){
		$("#section1").attr("style", "display:none");
		$("#section3").attr("style", "display:block");
		$("#section4").attr("style", "display:none");
	}
	
	function showDiv4(){
		$("#section1").attr("style", "display:none");
		$("#section3").attr("style", "display:none");
		$("#section4").attr("style", "display:block");
	}
	
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
		<div class="container" style="padding-top:20px">	
			
			<!-- 좌측 사이드 메뉴 -->
			<div class="sideMenu">
			
				<h1 class="title" ><i class="xi-label"></i>&nbsp;강의실 관리</h1>
				<hr>
				<div class="menu">
					<ul>
						
						<li><a href="classManage.do?tutor_no=${tutor_no }"><i class="xi-layout-aside-o xi-2x"></i><p>&nbsp;&nbsp;대쉬보드</p></a></li>
						<hr/>
						<li><a href="classManageLecture.do?tutor_no=${tutor_no }"><i class="xi-play-circle-o xi-2x"></i><p>&nbsp;&nbsp;강의</p></a></li>
						<hr/>
						<li><a href="classManageTask.do?tutor_no=${tutor_no }"><i class="xi-library-books-o xi-2x"></i><p>&nbsp;&nbsp;과제</p></a></li>
						<hr/>
						<li><a href="classManageTest.do?tutor_no=${tutor_no }"><i style="color: black;" class="xi-documents-o xi-2x"></i><p style="color: black;">&nbsp;&nbsp;시험</p></a></li>
						<hr/>
						<li><a href="classManageStudent.do?tutor_no=${tutor_no }"><i class="xi-man xi-2x"></i><p>&nbsp;&nbsp;수강생</p></a></li>
					</ul>
				</div>
			</div>
			
			<!-- 상단 정보 표시 -->
			<div class="header">
				<div class="profile" style="height: 96px;position: relative; display: inline-block; floar:left;">
					<div class="user_image" style="width: 80px;height: 80px;margin: 20px 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
						<img height="80" width="80" src="/finalp/resources/img/profileupload/${Lecture.mem_refile }" style="display: block;margin-left: auto;margin-right: auto;">
					</div>
				</div>

				<div class="tutorname">
					<h3 style="font-size: 2.6rem;font-weight: 400;line-height: 3rem;margin-top: 30px;padding-left: 10px;color:black!important">${Lecture.mem_name }</h3>
				</div>
				
				<div class="student">
					<h5 style="padding-left:10px">수강생  ${Lecture.apply_count }명</h5>				
				</div>
				<div class="home-btn">
					<a href="tutorHome.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}"><i class="xi-home xi-3x"></i></a>
				</div>
			</div>
			
			<!-- 하단 주요내용 -->
			<div class="content">
				
				<div class="tabs tabs-style-bar">
					<nav>
						<ul>
							<li><a href="#" name="item" onclick="showDiv4();" ><span>OVERVIEW</span></a></li>
							<li><a href="#" name="item" onclick="showDiv1();"><span>UPLOAD</span></a></li>
						</ul>
					</nav>
				</div>
				
				<div id="section4" style="display:block;">
					<h2>Test List</h2>
					<div class="grid">

						<table class="table table-striped table-bordered sortable-table clickable-table" id="problemset" style="font-size:13px">
				<thead>
				<tr>
					<th style="width:7%;text-align: center;" data-sort="int">번호</th>
					<th style="width:15%;text-align: center;" data-sort="int">등록 날짜</th>
					<th style="width:30%;text-align: center;" data-sort="string">제목</th>
					<th style="width:15%;text-align: center;" data-sort="string">카테고리</th>
					<th style="width:10%;text-align: center;" data-sort="int">맞은 사람</th>
					<th style="width:10%;text-align: center;" data-sort="float">정답 비율</th>
					<th style="width:13%;text-align: center;">삭제하기</th>
				</tr>
				</thead>

				<tbody>
					<c:if test="${currentPage == 1 }">
						<c:set value="0" var="test_sub_no"/>
					</c:if>
					<c:if test="${currentPage != 1 }">
						<c:set value="${currentPage*10-9 }" var="test_sub_no"/>
					</c:if>
					
					<c:forEach items="${testList }" var="row">
					<c:set value="${test_sub_no+1 }" var="test_sub_no"/>
					<tr>
						<c:if test="${currentPage == 1 }">
							<td class="list_problem_id">${test_sub_no }</td>
						</c:if>
						<c:if test="${currentPage !=1  }">
							<td class="list_problem_id">${test_sub_no-1 }</td>
						</c:if>

						<td>${row.test_reg_date }</td>
						<c:if test="${currentPage == 1 }">
							<td class="click-this"><a href="testDetail.do?tutor_no=${tutor_no }&test_no=${row.test_no}&test_sub_no=${test_sub_no}">${row.test_title }</a></td>
						</c:if>
						<c:if test="${currentPage != 1 }">
							<td class="click-this"><a href="testDetail.do?tutor_no=${tutor_no }&test_no=${row.test_no}&test_sub_no=${test_sub_no-1}">${row.test_title }</a></td>
						</c:if>
						<td>
							<span class="badge badge-info">${row.test_cate }</span>
						</td>
						<td><a href="#">${row.test_cor_cnt }</a></td>
						<td>${row.test_cor_cnt/Lecture.apply_count*100 }%</td>
						<td><button class="deleteButton" type="button" data-toggle="modal" data-target="#deleteTestModal" name="test_no" value="${row.test_no }">삭제</button></td>
					</tr>
					<c:url var="testdelete" value="testdelete.do">
						<c:param name="test_no" value="${row.test_no }"/>
						<c:param name="tutor_no" value="${tutor_no }"/>
					</c:url>
					</c:forEach>
				</tbody>
				</table>
				
				<!-- 페이지 번호 처리 -->
					<div style="text-align:center;">
						<c:url var="first" value="classManageTest.do">
							<c:param name="currentPage" value="1" />
							<c:param name="tutor_no" value="${tutor_no }"/>
						</c:url>
						<a href="${first }">[맨처음]</a>
						<c:url var="prev" value="classManageTest.do">
							<c:param name="currentPage" value="1" />
							<c:param name="tutor_no" value="${tutor_no }"/>
						</c:url>
						<c:if test="${currentPage != 1 }">
							<a href="${prev }">	[prev]</a>
						</c:if>
						<c:forEach var="p" begin="${startPage }" end="${endPage }" step="1">
							<c:url var="page" value="classManageTest.do">
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
						<c:url var="next" value="classManageTest.do">
							<c:param name="currentPage" value="${currentPage + 1 }" />
							<c:param name="tutor_no" value="${tutor_no }"/>
						</c:url>
						<c:if test="${currentPage != endPage }">
							<a href="${next }">	[next]</a>
						</c:if>
						
						<c:url var="last" value="classManageTest.do">
							<c:param name="currentPage" value="${maxPage }" />
							<c:param name="tutor_no" value="${tutor_no }"/>
						</c:url>
						<a href="${last }">[맨끝]</a>
					</div>

					</div>
					
				</div>
				
				
				<!-- test 삭제 모달 시작 -->
				<div class="modal fade" id="deleteTestModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content" style="border-radius: 3px;">
						      <div class="modal-header" style="border-bottom:0">
						        <h4 class="modal-title" id="exampleModalLabel" style="font-weight:400">정말로 이 시험을 삭제하시겠습니까?</h4>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
						      	<span style="font-size:13px">시험을 삭제하시게 되면 연관된 자료 또한 모두 삭제됩니다.</span>
						      </div>
						      <div class="modal-footer"  style="border-top:0;padding-top:0">
						      	<button type="button" class="deleteTestButton" onclick="location.href='${testdelete}'">시험 삭제</button>
						        <button type="button" class="deleteTestButton2" data-dismiss="modal">취소</button>
						      </div>
						    </div>
						  </div>
						</div>
				<!-- test 삭제 모달 끝 -->
				
				<div id="section1" style="display:none;">
					
						<div class="content-container" style="display: table-cell;width: 100%;vertical-align: top;">
					      <section class="section-column section-column-padding" style="padding:30px;font-size:16px">
					      
					        <form class="text-fields text-field-horizontal" action="makeTest.do" method="post" style="display: table;width: 100%;table-layout: fixed;" id="makeTestForm">
					          <input type="hidden" name="test_maker" value=${tutor_no }>
					          
					  <div class="course-basic-form">
					    <div class="text-field-horizontal" style="display: table;width: 100%;table-layout: fixed;">
					      
					      <div class="control" style="display: table-row;">
					        <div class="control-label">시험 제목</div>
					        <div class="control-input">
					          <input class="input-block" type="text" maxlength="50" name="test_title" placeholder="시험의 제목을 입력해주세요.">
					        </div>
					      </div>
					      
					      <div class="control" style="display: table-row;">
					        <div class="control-label">시험 카테고리</div>
					        <div class="control-input">
					          <input class="input-block" type="text" maxlength="50" name="test_cate" placeholder="시험 카테고리를 입력해주세요.">
					        </div>
					      </div>
					      
					      <div class="control" style="display: table-row;">
					        <div class="control-label">추가 Comment</div>
					        <div class="control-input">
					          <input class="input-block" type="text" maxlength="50" name="test_comment" placeholder="시험에 덧붙일 말을 추가해주세요.">
					        </div>
					      </div>
					      
					      <div class="control" style="display: table-row;">
					        <div class="control-label">시험 문제 내용</div>
					        <div class="control-input">
					           <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="test_pro" form="makeTestForm"></textarea>
					        </div>
					      </div>
					      
					      <div class="control" style="display: table-row;">
					        <div class="control-label">시험 정답</div>
					        <div class="control-input">
					           <pre><textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="test_answer" form="makeTestForm"></textarea></pre>
					        </div>
					      </div>
					    
					      
					      <div class="control" style="display: table-row;">
					        <div class="control-label">제한 시간</div>
					        <div class="control-input">
					          <input class="input-block" type="number" maxlength="10" name="test_lec_id" placeholder="단위(초)" style="width:15%">
					        </div>
					      </div>
					     
					      
					      
					    </div>
					  </div>
					
					          <br><br>
					          <div class="clearfix">
					            <div class="pull-right">
					   	 			<input type="submit" value="등록" style="outline: none;border: none;background: none;color: darkcyan;font-size: 20px;">          
					            </div>
					          </div>
					        </form>
					
					        
					      </section>
					      
					    </div>
				</div>
				
				<div id="section3" style="display:none;">
				
				</div>
				
					
				
			
			<!-- 하단 주요내용 끝 -->
			</div>
		
		
		</div>
	</div>
	
	
	<script src="resources/js/jquery.dotdotdot.js"></script>
	
</body>
</html>