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
		height: 950px;
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
		height: 800px;
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

</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript"></script>
<script>
	function showDiv1(){
		$("#section1").attr("style", "display:block");
		$("#section2").attr("style", "display:none");
		$("#section3").attr("style", "display:none");
	}
	
	function showDiv2(){
		$("#section1").attr("style", "display:none");
		$("#section2").attr("style", "display:block");
		$("#section3").attr("style", "display:none"); 
	}
	
		
	function showDiv3(){
		$("#section1").attr("style", "display:none");
		$("#section2").attr("style", "display:none"); 
		$("#section3").attr("style", "display:block");
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
		<div class="container">	
			
			<!-- 좌측 사이드 메뉴 -->
			<div class="sideMenu">
			
				<h1 class="title" >[강의실 관리]</h1>
				<hr>
				<div class="menu">
					<ul>
						
						<li><a href="classManage.do?tutor_no=${tutor_no }"><i class="xi-layout-aside-o xi-2x"></i><p>&nbsp;&nbsp;대쉬보드</p></a></li>
						<hr/>
						<li><a href="classManageLecture.do?tutor_no=${tutor_no }"><i class="xi-play-circle-o xi-2x"></i><p>&nbsp;&nbsp;강의</p></a></li>
						<hr/>
						<li><a href="#"><i class="xi-library-books-o xi-2x"></i><p>&nbsp;&nbsp;과제</p></a></li>
						<hr/>
						<li><a href="#"><i class="xi-documents-o xi-2x"></i><p>&nbsp;&nbsp;시험</p></a></li>
						<hr/>
						<li><a href="#"><i class="xi-man xi-2x"></i><p>&nbsp;&nbsp;수강생</p></a></li>
					</ul>
				</div>
			</div>
			
			<!-- 상단 정보 표시 -->
			<div class="header">
				<div class="profile" style="height: 96px;position: relative; display: inline-block; floar:left;">
					<div class="user_image" style="width: 80px;height: 80px;margin: 20px 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
						<img height="80" width="80" src="/finalp/resources/img/${Lecture.mem_refile }" style="display: block;margin-left: auto;margin-right: auto;">
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
							<li><a href="#" name="item" onclick="showDiv1();" ><span>OVERVIEW</span></a></li>
							<li><a href="#" name="item" onclick="showDiv2();"><span>과제 출제</span></a></li>
							<li><a href="#" name="item" onclick="showDiv3();"><span>Settings</span></a></li>
						</ul>
					</nav>
				</div>
				
				
				
				<div id="section1" style="display:block;">
					
						<div class="content-container" style="display: table-cell;width: 100%;vertical-align: top;">
					      <section class="section-column section-column-padding" style="padding:30px">
					        <form class="text-fields text-field-horizontal" method="post" style="display: table;width: 100%;table-layout: fixed;">
					          <input type="hidden" name="csrfmiddlewaretoken" value="vUT8gYeX8sfbB0dnwx1rd1ESbSRXV5YnWPrYQmTvL9HcBxiCnvkHyMIexkffSKkh">
					          
					  <div class="course-basic-form">
					    <div class="text-field-horizontal" style="display: table;width: 100%;table-layout: fixed;">
					      
					      <div class="control" style="display: table-row;">
					        <div class="control-label" style="width: 200px;display: table-cell;vertical-align: middle;padding: 8px 20px;">과제 제목</div>
					        <div class="control-input" style="display: table-cell;vertical-align: middle;padding: 8px 20px;">
					          <input class="input-block" type="text" maxlength="50" name="name" value="ㅁㄴㅇㄹ" placeholder="과제의 제목을 입력해주세요.">
					        </div>
					      </div>
					      
					      <div class="control" style="display: table-row;">
					        <div class="control-label" style="width: 200px;display: table-cell;vertical-align: middle;padding: 8px 20px;">추가 Comment</div>
					        <div class="control-input" style="display: table-cell;vertical-align: middle;padding: 8px 20px;">
					          <input class="input-block" type="text" maxlength="50" name="name" value="ㅁㄴㅇㄹ" placeholder="과제에 덧붙일 말을 추가해주세요.">
					        </div>
					      </div>
					      
					      <div class="control" style="display: table-row;">
					        <div class="control-label" style="width: 200px;display: table-cell;vertical-align: middle;padding: 8px 20px;">과제 내용</div>
					        <div class="control-input" style="display: table-cell;vertical-align: middle;padding: 8px 20px;">
					           <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
					        </div>
					      </div>
					      
					      <div class="control" style="display: table-row;">
					        <div class="control-label" style="width: 200px;display: table-cell;vertical-align: middle;padding: 8px 20px;">과제 정답</div>
					        <div class="control-input" style="display: table-cell;vertical-align: middle;padding: 8px 20px;">
					           <pre><textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea></pre>
					        </div>
					      </div>
					    
					      <div class="control" style="display: table-row;">
					        <div class="control-label" style="width: 200px;display: table-cell;vertical-align: middle;padding: 8px 20px;">Hint</div>
					        <div class="control-input" style="display: table-cell;vertical-align: middle;padding: 8px 20px;">
					          <input class="input-block" type="text" maxlength="50" name="name" value="ㅁㄴㅇㄹ">
					        </div>
					      </div>
					      
					      
					      
					    </div>
					  </div>
					
					          <br><br>
					          <div class="clearfix">
					            
					              <div class="pull-left">
					                <span class="btn-flat modal-btn danger" data-target="#delete-course-modal">
					                  과제 삭제하기
					                </span>
					              </div>
					            
					            <div class="pull-right">
					              <a href="/course/draft/4412/" target="_blank" class="btn-flat">
					                
					                  미리보기
					                
					              </a>
					              
					  <button class="btn-flat" name="next" type="submit" value="/teach/course/4412/content/basic/">등록하기</button>
					  <button class="btn-flat" type="submit" name="next" value="/teach/course/4412/content/introduction/">
					    저장하고 다음 단계로</button>
					
					            </div>
					          </div>
					        </form>
					        
					          
					
					<div id="delete-course-modal" class="modal fade hide">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <div class="modal-title">
					          정말로 이 강좌를 삭제하시겠습니까?
					        </div>
					        <div class="modal-header-menu">
					          <span class="modal-close confirm-cancel">×</span>
					        </div>
					      </div>
					      <div class="modal-body form-container">
					        <p>
					          강좌를 삭제하시게 되면 강좌에 업로드된 강의 및 참고자료를 모두 잃게 됩니다.
					        </p>
					      </div>
					      <div class="modal-footer">
					        <div class="btn-flat modal-btn color-red-500" data-target="#real-delete-course-modal">
					          강좌 삭제
					        </div>
					        <div class="btn-flat confirm-cancel modal-close">
					          취소하기
					        </div>
					      </div>
					    </div>
					  </div>
					</div>
					
					<div id="real-delete-course-modal" class="modal fade hide">
					  <div class="modal-dialog">
					    <form class="modal-content" method="POST" action="/teach/course/4412/delete/">
					      <input type="hidden" name="csrfmiddlewaretoken" value="vUT8gYeX8sfbB0dnwx1rd1ESbSRXV5YnWPrYQmTvL9HcBxiCnvkHyMIexkffSKkh">
					      <div class="modal-header">
					        <div class="modal-title">
					          "정말로" 이 강좌를 삭제하시겠습니까?
					        </div>
					        <div class="modal-header-menu">
					          <span class="modal-close confirm-cancel">×</span>
					        </div>
					      </div>
					      <div class="modal-body form-container">
					        아래 버튼을 누르시면 회원님께서 강좌를 제작하기 위해 준비한 모든 활동의 결과물을 잃게 됩니다.
					      </div>
					      <div class="modal-footer">
					        <div class="btn-flat confirm-cancel modal-close">
					          취소하기
					        </div>
					        <button class="btn-flat delete-course-btn color-red-500">
					          과제 삭제
					        </button>
					      </div>
					    </form>
					  </div>
					</div>
					
					        
					      </section>
					      
					    </div>
				</div>
				
				
				
				<!-- 강의 업로드 -->
				<div id="section2" style="display:none;">
					<div class="uploadExplain">
						<img style="box-shadow: 0 10px 16px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19) !important;" width="700px;" height="350px;" src="/finalp/resources/img/lectureUpload.png">
						<br><br>
						<p style="font-weight:600; font-size: 14px;">Youtube 업로드 하실 때 입력하신 속성(①videoID ②강의 제목 ③강의 설명)들을 아래 박스에도 그대로 써주세요:D  </p>
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
				
				
				<div id="section3" style="display:none;">
				
				</div>
				
					
				
			
			<!-- 하단 주요내용 끝 -->
			</div>
		
		
		</div>
	</div>
</body>
</html>