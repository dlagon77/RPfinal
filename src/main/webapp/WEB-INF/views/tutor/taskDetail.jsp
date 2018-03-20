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
		
		.headline {
			display: block;
			margin: 10px 0 25px 0;
			border-bottom: 1px dotted #e4e9f0;
		}

		.headline h2, .headline h3, .headline h4 {
			border-bottom: 2px solid #0076C0;
			margin: 0 0 -2px 0;
			padding-bottom: 5px;
		}
		.headline h2 {
			font-size: 22px;
		}
		p, li, li a {
			color: #555;
		}
		h1, h2, h3, h4, h5, h6 {
			color: #585f69!important;
			margin-top: 5px;
			text-shadow: none!important;
			font-weight: 600;
			font-family: 'Open Sans', sans-serif!important;
		}

		.compileButton{
			background-color: #337ab7;
			border-radius: 2px;
			color: white;
			padding: 10px 15px;
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

		.compileButton:hover{
			background-color:#285e8e;
		}
			.deleteButton{
		border: none;
	    outline: none;
	    background: none;
	    color: gray;
	    font-size:15px;
	}
	.deleteButton:hover {
		color:#f44336;
	}
	.deleteButton2 {
		border: none;
	    outline: none;
	    background: none;
	    color: gray;
	    font-size:15px;
	    color: #2196f3;
	}
	
	.deleteTaskButton {
		border: none;
	    outline: none;
	    color: #f44336;
	    background: none;
	    font-size: 15px;
	    margin-right: 20px;
		
	}
	
	.deleteTaskButton:hover{
		font-weight:bold;
		
	}
	
	.deleteTaskButton2 {
		border: none;
	    outline: none;
	    color: #2196f3;
	    background: none;
	    font-size: 14px;
	    margin-right: 20px;
		
	}
	.deleteTaskButton2:hover{
		font-weight:bold;
		
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
							<img height="80" width="80" src="/finalp/resources/img/${Lecture.mem_refile }" style="display: block;margin-left: auto;margin-right: auto;">
					</div>
				</div>

				<div class="desc">
					<h3 style="font-size: 2.6rem;font-weight: 400;line-height: 3rem;margin-top: 30px;padding-left: 10px;color:black!important">${Lecture.mem_name }</h3>
					<h5 style="padding-left:10px;color:gray!important">수강생 ${Lecture.apply_count }명</h5>
				</div>

				<div style="margin-top: 25px;margin-left:10px">
					<button style="border: 0;outline: 0;background-color: hsla(0, 0%, 97%, 1);">
						<img height="40" width="50" src="/finalp/resources/img/setting1.png" onclick="location.href='classManageLecture.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}'">
					</button>
				</div>

			</div>
			<div class="col-lg-3">
				<div style="margin-left: 75%;margin-top: 25px;">
					<button class="applyButton">수강신청</button>
				</div>
			</div>
		</div>

	</div>

	<div id="navbar" style="z-index:99;width:100%;height:48px;background-color: hsla(0, 0%, 97%, 1);text-align:center; font-size:14px">
		<div class="container about" style="display:flex;">
			<nav class="navbar sticky-top navbar-light bg-light" style="display:flex">
			  <a href="tutorHome.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}" class="navbar-brand" href="#" style="width:120px;color:gray"><span class="a">Home</span></a>
			  <a href="lecturePlayList.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}" class="navbar-brand" href="#" style="width:120px;color:gray"><span class="a">강의</span></a>
			  <a href="taskList.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}" class="navbar-brand" href="#" style="width:120px;color:gray"><span class="a">과제</span><div class="selected"></div></a>
			  <a href="#" class="navbar-brand" href="#" style="width:120px;color:gray"><span class="a">Test</span></a>

			  <form style="margin-top:7px;display:flex">
			  <span class="a"><button type="submit" class="searchButton" style="outline:none"><img src="/finalp/resources/img/search.png" style="padding: 5px 30px;cursor:pointer"></button></span>
				  <input class="searchLecture" type="text" placeholder="검색" style="height: 35px;width: 150px;background: transparent;margin-left: -30px;">
				</form>

			</nav>
		</div>
		</div>


<!-- About -->

<div class="container about" style="width:1170px;font-size:14px">

	<section class="about" id="about" style="width:1170px;padding-bottom:30px">

		
		
		<div class="row">
		<div class="col-md-12">

			
			<ul class="nav nav-pills no-print">
				<li class="active"><a href="/problem/1000">${ass_sub_no }</a></li>
				<li><a href="/problem/status/1000">맞은 사람</a></li>

				<li><a href="/short/status/1000">숏코딩</a></li>
				<li><a href="/problem/solutions/1000">풀이</a></li>
				<li><a href="/problem/solution/write/1000">풀이 작성</a></li>
				<li><a href="#" class="solution-request">풀이 요청</a></li>
				<li><a href="/problem/history/1000">재채점/수정</a></li>

				<li><a href="/status/?from_problem=1&amp;problem_id=1000">채점 현황</a></li>

				<li class="dropdown">
				<a class="dropdown-toggle" id="drop5" role="button" data-toggle="dropdown" href="#">강의<b class="caret"></b></a>
				<ul id="menu2" class="dropdown-menu" role="menu" aria-labelledby="drop5">
								<li>
							<a tabindex="-1" href="https://code.plus/course/3">
								프로그래밍 대회에서 사용하는 Java
							</a>
						</li>
							<li>
							<a tabindex="-1" href="https://code.plus/course/4">
								알고리즘 기초
							</a>
						</li>
						
					<li class="divider"></li>
					<li><a tabindex="-1" href="#" class="lecture-request">강의 요청하기</a></li>
				</ul>
				</li>

			</ul>

					


			<div class="page-header" style="display:flex">
				<h1 style="font-weight:600">
					<span id="problem_title" class="">${assignment.ass_title }</span>
				</h1>
								 <button class="deleteButton" type="button" data-toggle="modal" data-target="#deleteTaskModal" style="margin-left: 70%;">과제 삭제하기</button>
			</div>
			
			<!-- 과제 삭제 모달 시작 -->
			<div class="modal fade" id="deleteTaskModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog" role="document">
					    <div class="modal-content" style="border-radius: 3px;">
					      <div class="modal-header" style="border-bottom:0">
					        <h4 class="modal-title" id="exampleModalLabel" style="font-weight:400">정말로 이 과제를 삭제하시겠습니까?</h4>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body">
					      	<span style="font-size:13px">과제를 삭제하시게 되면 연관된 자료 또한 모두 삭제됩니다.</span>
					      </div>
					      <div class="modal-footer"  style="border-top:0;padding-top:0">
					      	<button type="button" class="deleteTaskButton" >과제 삭제</button>
					        <button type="button" class="deleteTaskButton2" data-dismiss="modal">취소</button>
					        
					      </div>
					    </div>
					  </div>
					</div>
			<!-- 과제 삭제 모달 끝 -->

			<div class="table-responsive">
				<table class="table" id="problem-info">
				<thead>
				<tr>
					<th style="width:25%;">제한시간</th>
					<th style="width:25%;">카테고리</th>
					<th style="width:25%;">맞은 사람</th>
					<th style="width:25%;">정답 비율</th>
				</tr>
				</thead>
				<tbody>
					<tr>
						<td>-</td>
						<td>${assignment.ass_cate }</td>
						<td>${assignment.ass_cor_cnt }</td>
						<td>${row.ass_cor_cnt/Lecture.apply_count*100 }%</td>
					</tr>
				</tbody>
				</table>
			</div>


			<section id="description" style="padding-top:30px">
				<div class="headline">
					<h2 style="width: 4%;font-weight:600">문제</h2>
				</div>
				<div style="font-size:medium; line-height:30px;" id="problem_description">
					<p>${assignment.ass_pro }</p>
				</div>
			</section>

			<section id="description" style="padding-top:30px">
				<div class="headline">
					<h2 style="width: 4%;font-weight:600">Hint</h2>
				</div>
				<div style="font-size:medium; line-height:30px;" id="problem_description">
					<p>${assignment.ass_hint }</p>
				</div>
			</section>


			<section id="description" style="padding-top:30px">
				<div class="headline">
					<h2 style="width: 9%;font-weight:600">예제 정답</h2>
				</div>
				<div style="font-size:medium; line-height:30px;" id="problem_description">
					<pre class="sampledata" id="an">${assignment.ass_answer }</pre>
				</div>
			</section>

			<section id="sampleinput" style="padding-top:30px">
				<div class="headline">
					<h2 style="width:6%;font-weight:600">풀기</h2>
				</div>
			</section>
			<div class="row">
			<div class="col-md-8">
				<section id="sampleinput" style="padding-top:0">
				
				<div style="display:flex;margin-bottom: 20px;">
					<p>Tutor_NO : <p><input type="text" id="tutorno" onblur="check()" value="  ${tutor_no }" style="border: 0px solid;" readonly>
					<p>Enter Class Name : <p><input type="text" id="class" onblur="check()">
				</div>
				<div style="display:flex;width: fit-content;">
					<button class="compileButton" onclick="compile()">Compile</button>
					<button class="compileButton" onclick="run()">Run</button>
					<button class="compileButton" onclick="empty()">Clear</button>
					<button class="compileButton" id="subutton" onclick="subass()">제출</button>
				</div>
				<textarea class="form-control" aria-label="With textarea" rows="30" id="maincode" name="maincode" style="overflow:auto;box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.12)"></textarea>
				
				</section>
			</div>
			<div class="col-md-4">
				<section id="sampleoutput" style="padding-top:30px">
				<div style="padding-top:84px"></div>
				
				<textarea class="form-control" aria-label="With textarea" rows="30" id="output" name="output" style="overflow:auto;box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.12)"></textarea>
				</section>
			</div>
				
			</div>
			<hr>

		</div>


			

		<div class="col-md-12">
			

		</div>
		<div class="margin-bottom-20"></div>
		<div style="width: 100%;">
			
</div>
<div class="margin-bottom-20"></div>

	</div><!--row-->



<input type="hidden" id="abc" value=${assignment.ass_cate } >
	</section>
	

	
	
	






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
	<script type="text/javascript" src="/finalp/resources/js/j_main__script.js"></script>
	<script type="text/javascript" src="/finalp/resources/js/jquery-3.3.1.min.js"></script>
	

<script type="text/javascript">

$(function(){
 	$("#subutton").on("click",function(){

  $.ajax({
			url:"test1.do",

			data:{submit : "sub", ass_orfile : ($("#class").val()+".java"), ass_writer : ${loginUser.mem_no}, ass_cate : $("#abc").val()},

	          type : "post",
	          success : function(result){
	              if(result == "ok"){
	                  alert("Success");
	               }else{
	                  alert("Fail");
	               }	         
	          },
	          error : function(request,status, errorData){
	             alert("error code : " + request.status + "\n"
	                   + "message : " + request.responseText + "\n"
	                   + "error : " + errorData);
	          }
		}); 
	});  

});
</script>	



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
<script>
window.onload=startass; 
</script>
</html>



