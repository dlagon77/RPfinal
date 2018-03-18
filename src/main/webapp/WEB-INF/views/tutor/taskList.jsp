<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		.taskRegButton{
			background-color: #337ab7;
			border-radius: 2px;
			color: white;
			padding: 13px 19px;
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
			margin: 10px;
		}

		.taskRegButton:hover{
			background-color:#285e8e;
		}

		table {
			color: #333;
			font-size: 14px;
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

		.badge-primary {
			color: #fff!important;
			background-color: #007bff!important;
		}
		
		.badge-light-green{
			background: #79d5b3!important;
		}
		.badge-purple{
			background:#9b6bcc!important;
		}
		.badge-info{
			background:#5bc0de!important;
		}	
		.badge-from{
			background:#428bca!important;
		}
		#deapply{
			background-color: hsl(0, 0%, 93.3%);
			color: hsla(0, 0%, 6.7%, .6);
		}
</style>
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
							<img height="40" width="50" src="/finalp/resources/img/setting1.png" onclick="location.href='classManageLecture.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}'">
						</button>
					</div>
				</c:if>

			</div>
			<div class="col-lg-3">
				<div style="margin-left: 75%;margin-top: 25px;">
					<c:if test="${checkApply eq 0 }">
						<c:url var="apply" value="apply.do">
							<c:param name="mem_no" value="${loginUser.mem_no }"/>
							<c:param name="tutor_no" value="${tutor_no }" />
							<c:param name="pageName" value="taskList.do" />
						</c:url>
						
						<button id="apply" class="applyButton" onclick="location.href='${apply }'">수강신청</button>
					</c:if>
					<c:if test="${checkApply gt 0 }">
						<c:url var="deapply" value="deapply.do">
							<c:param name="mem_no" value="${loginUser.mem_no }"/>
							<c:param name="tutor_no" value="${tutor_no }" />
							<c:param name="pageName" value="taskList.do" />
						</c:url>
						<button id="deapply" class="applyButton" data-toggle="modal" data-target="#exampleModal">
							<img src="/finalp/resources/img/check.png">&nbsp;수강중 ${Lecture.apply_count }명
						</button>
						
						<!-- 수강신청취소 Modal -->
						<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">수강 신청 취소</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
						        정말로 수강을 취소하시겠습니까?
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
						        <button type="button" class="btn btn-primary" onclick="location.href='${deapply}'">수강 취소</button>
						      </div>
						    </div>
						  </div>
						</div>
					</c:if>
					
				</div>
			</div>
		</div>
		
		

	</div>

	<div id="navbar" style="z-index:99;width:100%;height:48px;background-color: hsla(0, 0%, 97%, 1);text-align:center; font-size:14px">
		<div class="container about" style="display:flex;">
			<nav class="navbar sticky-top navbar-light bg-light" style="display:flex">
			  <a href="tutorHome.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}" class="navbar-brand" style="width:120px;color:gray"><span class="a">Home</span></a>
			  <a href="lecturePlayList.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}" class="navbar-brand" style="width:120px;color:gray"><span class="a">강의</span></a>
			  <a href="taskList.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}" class="navbar-brand" style="width:120px;color:gray"><span class="a">과제</span><div class="selected"></div></a>
			  <a href="#" class="navbar-brand" style="width:120px;color:gray"><span class="a">Test</span></a>

			  <form style="margin-top:7px;display:flex">
			  <span class="a"><button type="submit" class="searchButton" style="outline:none"><img src="/finalp/resources/img/search.png" style="padding: 5px 30px;cursor:pointer"></button></span>
				  <input class="searchLecture" type="text" placeholder="검색" style="height: 35px;width: 150px;background: transparent;margin-left: -30px;">
				</form>

			</nav>
		</div>
		</div>


<!-- About -->

<div class="container about" style="width:1170px">

	<section class="about" id="about" style="width:1170px">

		<div class="input-group mb-3" style="width:15%;float: right;margin-bottom:10px">
		
		  <select class="custom-select" id="inputGroupSelect02" style="width:100%">
			<option selected>문제 분류 선택</option>
			<option value="1">One</option>
			<option value="2">Two</option>
			<option value="3">Three</option>
		  </select>
		  
		</div>

		
		<div class="row">
		<div class="col-md-12">
			<div class="table-responsive">
				<table class="table table-striped table-bordered sortable-table clickable-table" id="problemset">
				<thead>
				<tr>
					<th style="width:10%;text-align: center;" data-sort="int">문제 번호</th>
					<th style="width:10%;text-align: center;" data-sort="int">등록 날짜</th>
					<th style="width:40%;text-align: center;" data-sort="string">제목</th>
					<th style="width:20%;text-align: center;" data-sort="string">카테고리</th>
					<th style="width:10%;text-align: center;" data-sort="int">맞은 사람</th>
					<th style="width:10%;text-align: center;" data-sort="float">정답 비율</th>
				</tr>
				</thead>

				<tbody>
					<c:set value="0" var="assign_no"/>
					<c:forEach items="${assignList }" var="row">
					<c:set value="${assign_no+1 }" var="assign_no"/>
					<tr>
					
					
						<td class="list_problem_id">${assign_no }</td>
						<td>${row.ass_reg_date }</td>
						<td class="click-this"><a href="taskDetail.do?tutor_no=${tutor_no }&ass_no=${row.ass_no}&ass_sub_no=${assign_no}">${row.ass_title }</a></td>
						<td>
							<span class="badge badge-info">${row.ass_cate }</span>
						</td>
						<td><a href="#">${row.ass_cor_cnt }</a></td>
						<td>${row.ass_cor_cnt/Lecture.apply_count*100 }%</td>
					
					</tr>
					</c:forEach>
					<!-- <tr>
						<td class="list_problem_id">1003</td>
						<td>18/03/13</td>
						<td class="click-this"><a href="/problem/1003">피보나치 함수</a></td>
						<td>
							
						</td>
						<td><a href="#">334</a></td>

						<td>41.608%</td>
					</tr>
											
					<tr>
						<td class="list_problem_id">1008</td>
						<td>18/03/13</td>
						<td class="click-this"><a href="#">A/B</a></td>
						<td>
							<span class="badge badge-info">분류1</span>
							<span class="badge badge-primary">분류2</span>
							<span class="badge badge-light-green">분류3</span>
							<span class="badge badge-purple">분류4</span>
						</td>
						<td><a href="#">170</a></td>
						<td>35.179%</td>
					</tr>
											
					<tr>
						<td class="list_problem_id">1014</td>
						<td>18/03/13</td>
						<td class="click-this"><a href="/problem/1014">컨닝</a></td>
						<td>
							<span class="badge badge-from">배열</span>
							<span class="badge badge-default">변수</span>
						</td>
						<td><a href="/status/?problem_id=1014&amp;result_id=4">360</a></td>
						<td>37.267%</td>
					</tr>
											
											
											 -->
				</tbody>
				</table>
			</div>
			</div>

		<div style="display:inline-flex;position: relative;left: 90%;">
			<button class="taskRegButton">과제등록</button>
		</div>
		

		<div class="col-md-12">
			<div class="text-center">
			<ul class="pagination">
				<li class="active">
					<a href="/problemset/1">1</a>
				</li>
				<li>
					<a href="/problemset/2" id="next_page">2</a>
				</li>
				<li>
					<a href="/problemset/3">3</a>
				</li>
				<li>
					<a href="/problemset/4">4</a>
				</li>
				<li>
					<a href="/problemset/5">5</a>
				</li>
			</ul>
			</div>
		</div>
		<div class="margin-bottom-20"></div>
		<div style="width: 100%;">
			
</div>
<div class="margin-bottom-20"></div>

	</div>




	</section>
	
	<hr>

	
	
	






</div><!-- container about -->
	
	
	<a href="#page-top" class="cd-top">Top</a>

	
	<script>
		// For Demo purposes only (show hover effect on mobile devices)
		[].slice.call( document.querySelectorAll('a[href="#"') ).forEach( function(el) {
			el.addEventListener( 'click', function(ev) { ev.preventDefault(); } );
		} );
	</script>


    <!-- script -->
    <script src="/finalp/resources/js/jquery.js"></script>
    <script src="/finalp/resources/js/bootstrap.min.js"></script>
	<script src="/finalp/resources/js/modernizr.js"></script>
	<script src="/finalp/resources/js/script.js"></script>
	

	



<script>

function myFunction() {
    var x = document.getElementById("mySidenav");
	var y = document.getElementById("main");
	var b = document.getElementById("banner");
    if (x.style.display == "none") {
        x.style.display = "block";
		y.style.marginLeft = "240px";
		b.style.height = "265px";
		
    } else {
        x.style.display = "none";
		y.style.marginLeft = "0";
		b.style.height = "305px";
		
    }
}

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



