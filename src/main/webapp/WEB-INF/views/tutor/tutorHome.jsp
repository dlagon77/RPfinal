<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tutor Home</title>
<style type="text/css">
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
		
		#deapply{
			background-color: hsl(0, 0%, 93.3%);
			color: hsla(0, 0%, 6.7%, .6);
		}
		#applyready{
			background-color: burlywood;
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
		color: #337ab7;
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

	<!-- 별점플러그인 관련 링크 -->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
	<link rel="stylesheet" href="/finalp/resources/css/fontawesome-stars.css">
	
	
	
	<!-- icon관련 링크 -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	

</head>
<script type="text/javascript">
function showDiv1(){
	$("#section1").attr("style", "display:block");
	$("#section2").attr("style", "display:none");
}

function showDiv2(){
	$("#section1").attr("style", "display:none");
	$("#section2").attr("style", "display:block");
}
</script>
<body>
<c:import url="../header.jsp" />

<div id="banner" style="height:305px;background-image: url('/finalp/resources/img/avatar.jpg');background-size:cover;background-position-y: -200px;"></div>

	<div style="background-color:hsla(0, 0%, 93.3%, .4);">
	
		
		<div class="container about" style="display:flex;width:1284px"">
			<div class="col-lg-9" style="display: inline-flex">
				<div class="profile" style="height: 96px;position: relative; display: inline-block; floar:left;">
					<div class="user_image" style="width: 80px;height: 80px;margin: 20px 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
						<img height="80" width="80" src="/finalp/resources/img/profileupload/${Lecture.mem_refile }" style="display: block;margin-left: auto;margin-right: auto;">
					</div>
				</div>

				<div class="desc">
					<h3 style="font-size: 2.6rem;font-weight: 400;line-height: 3rem;margin-top: 30px;padding-left: 10px;color:black!important">${Lecture.mem_name }</h3>
					<h5 id="count" style="padding-left:10px;color:gray!important">수강생 ${Lecture.apply_count }명</h5>
				</div>
				
				<c:if test="${loginUser.mem_no eq tutor_no }">
				<div style="margin-top: 25px;margin-left:10px">
					<button style="border: 0;outline: 0;background-color: hsla(0, 0%, 97%, 1);" onclick="location.href='classManage.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}'">
						<img height="40" width="50" src="/finalp/resources/img/setting1.png">
					</button>
				</div>
				</c:if>
				
			</div>
			<div class="col-lg-3">
				<div style="margin-left: 75%;margin-top: 25px;">
					<c:if test="${checkReady eq 0 && checkApply eq 0}">
						<c:url var="apply" value="apply.do">
							<c:param name="mem_no" value="${loginUser.mem_no }"/>
							<c:param name="tutor_no" value="${tutor_no }" />
							<c:param name="pageName" value="tutorHome.do" />
						</c:url>
						<c:if test="${loginUser.mem_no != tutor_no }">
							<button id="apply" class="applyButton" onclick="location.href='${apply }'">수강신청</button>
						</c:if>
					</c:if>
					
					<c:if test="${checkReady gt 0}">
						<button id="applyready" class="applyButton" disabled><i class="xi-spinner-1 xi-spin xi-x"></i>&nbsp;&nbsp;수강대기</i></button>
					</c:if>
					
					
					<c:if test="${checkApply gt 0 }">
						<c:url var="deapply" value="deapply.do">
							<c:param name="mem_no" value="${loginUser.mem_no }"/>
							<c:param name="tutor_no" value="${tutor_no }" />
							<c:param name="pageName" value="tutorHome.do" />
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
			  <a href="tutorHome.do?tutor_no=${tutor_no }" class="navbar-brand" style="width:120px;color:gray"><span class="a">Home</span><div class="selected"></div></a>
			  <a href="lecturePlayList.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}" class="navbar-brand" style="width:120px;color:gray"><span class="a">강의</span></a>
			  <a href="taskList.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}" class="navbar-brand" style="width:120px;color:gray"><span class="a">과제</span></a>
			  <a href="testList.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}" class="navbar-brand" style="width:120px;color:gray"><span class="a">Test</span></a>

			  <form style="margin-top:7px;display:flex" action="search.do">
			  <div>
			  	<c:if test="${checkApply gt 0 }">
			  		<button type="submit" class="searchButton" style="outline:none"><img src="/finalp/resources/img/search.png" style="padding: 5px 30px;cursor:pointer"></button>
			  	</c:if>
			  	<c:if test="${checkApply <= 0 }">
			  		<!-- <button type="submit" class="searchButton" style="outline:none" disabled><img src="/finalp/resources/img/search.png" style="padding: 5px 30px;cursor:pointer"></button> -->
			  		<button type="button" class="searchButton" data-toggle="tooltip" data-placement="top" title="수강생이 아닙니다!">
					  <img src="/finalp/resources/img/search.png" style="padding: 5px 30px;cursor:pointer">
					</button>
			  	</c:if>
			  	
			  </div>
			  <div>	
			  	<input class="searchLecture" type="text" placeholder="검색" name="search_content" style="height: 35px;width: 150px;background: transparent;margin-left: -30px;">
			  	<input type="hidden" name="tutor_no" value=${tutor_no } >
			  	<input type="hidden" name="mem_no" value=${loginUser.mem_no }>
			  </div>
				  
				</form>

			</nav>
		</div>
		</div>

	
  
<!-- About -->

<div class="container about" style="width:1284px">

	<section class="about" id="about" style="width:1284px">
		<!--<div class="container about" style="width:1284px">-->
			<div class="row">

				<div class="col-md-7 big-letter">
				<iframe width="734" height="400" src="https://www.youtube.com/embed/${introduce.lec_link }" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
				
					
					<br>
				</div>
				<div class="col-md-5">
					<h2>${introduce.lec_title }</h2>
					<br>
					<p>
						${introduce.lec_con }
					</p>
					<br>
					<img class="pull-right" src="/finalp/resources/img/logo2.PNG" alt="signature">
					
				</div>
			</div>
		<!--</div>-->
	</section>
	
	
	<hr>
	<div class="tabs tabs-style-bar">
		<nav>
			<ul>
				<li><a href="#" name="item" onclick="showDiv1();" ><span style="font-size: 13px; font-weight: 700;">댓글</span></a></li>
				<li><a href="#" name="item" onclick="showDiv2();"><span style="font-size: 13px; font-weight: 700;">HTML/CSS 연습장</span></a></li>
			</ul>
		</nav>
	</div>
	
	<div id="section2" style="display:none;">
	  	<div id="container" style="text-align: center;">
		  <br><br>
	      <div id="box" style="font-size:15px">
	         <textarea class="innerbox html" placeholder="Enter HTML Here" style="width: 45%;height: 200px;box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.42);margin-right:20px"></textarea>
	         <textarea class="innerbox css" placeholder="Enter Css Here" style="width: 45%;height: 200px;box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.42);margin-bottom:30px"></textarea>
	            <div class="innerbox preview">
	               <iframe id="live_update" style="width: 100%;height: 300px;box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.12)">
	                  <!doctype html>
	                  <html lang="en">
	                  <head><meta charset="utf-8">
	                  </head>
	                  <body></body>
	                  </html>
	               </iframe>
	            </div><!-- /iframe holder -->
	      </div><!-- /box -->
	   </div><!-- /container -->
	</div>
    
	
	<div id="section1" style="display:block;">
	
		<!--<div class="container">-->
		<div style="display:flex">
		<h4><div id="reviewCount">평가 ${reviewCount }개</div></h4>
		</div>
		<section class="about" id="about" style="width:1284px;padding-top:0">
			<div class="row">
	
				<div class="col-md-7 big-letter">
					
					<!--리뷰 등록 템플릿 -->
					<div class="message" style="display:flex;width:750px;margin-bottom: 50px;">
						<button style="background: none;border: none;outline: none;display: flex;">
						<div class="user_image" style="width: 45px;height: 45px;cursor: pointer;margin: 0 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
							<c:if test="${loginUser.mem_refile == null }">
								<img height="45" width="45" src="/finalp/resources/img/logo2.PNG" style="display: block;margin-left: auto;margin-right: auto;">
							</c:if>
							<c:if test="${loginUser.mem_refile != null }">
								<img height="45" width="45" src="/finalp/resources/img/profileupload/${loginUser.mem_refile }" style="display: block;margin-left: auto;margin-right: auto;">
							</c:if>
						</div>
					   </button>
			
						<form style="width:100%">
						  <div class="form-group" style="font-size:15px;padding-top: 50px;">
							<input type="text" class="messageInput" id="inputReviewContent" placeholder="리뷰 추가" style="border:none;outline:none;border-bottom: solid 1px black;width:100%">
							<select id="star">
							  <option value="1">1</option>
							  <option value="2">2</option>
							  <option value="3">3</option>
							  <option value="4">4</option>
							  <option value="5">5</option>
							</select>
						  </div>
						
						  <button type="button" id="inputReviewButton" class="btn btn-primary" style="float:right" onclick="insertReview();">리뷰등록</button>
						</form>
					</div>
					<!-- 리뷰 등록 템플릿 끝 -->
					
					<div id="review">
					<c:forEach items="${review }" var="row">
					<!-- 댓글 리스트 폼 -->
					
						<div class="message" style="display:flex;width:750px;padding-bottom: 50px;font-size: 15px!important;">
							<button style="background: none;border: none;outline: none;display: flex;">
							<div class="user_image" style="width: 45px;height: 45px;cursor: pointer;margin: 0 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
								<img height="45" width="45" src="/finalp/resources/img/profileupload/${row.mem_refile }" style="display: block;margin-left: auto;margin-right: auto;">
							</div>
						   </button>
						   <div>
							<span style="font-size:16px!important;font-weight:500;">${row.mem_name }&nbsp;&nbsp;<span style="color:gray;font-weight:400;font-size:14px!important">${row.rev_date }</span></span>
						   	<p>${row.rev_con }</p>
						   </div>
						   <div style="margin-top:1%;position: absolute;left: 87%;">
							   <select id="p${row.rev_no }">
								  <option value="1">1</option>
								  <option value="2">2</option>
								  <option value="3">3</option>
								  <option value="4">4</option>
								  <option value="5">5</option>
								</select>
							</div>
						</div>
					
					<!-- 댓글 리스트 폼 끝--> 
					
					</c:forEach>
					</div>
					
	
	
				</div><!--col-md-7-->
	
	
				<div class="col-md-5" style="width: 35%;float: right;">
				<br>
				<form action="#">
					<div class="input-group mb-3">
					  <div class="input-group-prepend">
						<span class="input-group-text" id="basic-addon1">@제목</span>
					  </div>
					  <input type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
					</div>
					<br>
					<div class="input-group mb-3">
					  <div class="input-group-append">
						<span class="input-group-text" id="basic-addon2">@강사님께 쪽지보내기</span>
					  </div>
					</div>
					<textarea class="form-control" aria-label="With textarea" rows="10"></textarea>
					<br>
					<button type="submit" class="btn btn-primary" style="float:right">쪽지보내기</button>
					</div>
					
				</form>
	
				</div>
		</section>
		
	
		<hr>
	</div>
</div><!-- container about -->


	<!-- 별점플러그인 관련 스크립트 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="/finalp/resources/js/jquery.barrating.min.js"></script>
	
	<!-- <script type="text/javascript">
		$(function(){
			$('#apply').on(click)
		})
	
	</script> -->
	
	
	<c:forEach items="${review }" var="row">
	<script type="text/javascript">
	
	   $(function() {
		  $('#p${row.rev_no}').barrating({
			theme: 'fontawesome-stars',
			readonly : true,
			initialRating : ${row.rev_star}
			
		  });
	   });
	   
	</script>
	</c:forEach>
	<script type="text/javascript">
	   $(function() {
		   $('#star').barrating({
			theme: 'fontawesome-stars'
		  });
	   });
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

<script type="text/javascript">
	
	    	  function insertReview(){
	    		  var content = $('#inputReviewContent').val();
		    	  var star = $('#star option:selected').val();

		     
		         //alert("테스트1 버튼 클릭됨!");
		         $.ajax({
		        	 url: "insertReview.do",
		        	 data: {"tutor_id" : ${tutor_no}, "rev_con" : content, "mem_no" : ${loginUser.mem_no}, "rev_star" : star },
		        	 type: "post",
		        	 success: function(result){
		        		 if(result=="ok"){
		        			 alert("리뷰 등록 성공!");
		        			 listReview();
		        		 }
		        		 else{
		        			 alert("리뷰 등록 fail!");
		        		 } 
		        	 },
		        	 error: function(request, status, errorData){
		        		 alert("error code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + errorData);
		        	 }
		         });
	    	  }
	    	  
	    	  function listReview(){
	    		  
	    		  $.ajax({
			        	url: "selectReview.do",
			        	data: {"tutor_no" : ${tutor_no}},
			        	type: "post",
			        	dataType: "JSON",
			        	success: function(result){
			        		$('#review').html("");
			        		var jsonStr = JSON.stringify(result);
			        		var json = JSON.parse(jsonStr);
			        		var tag = "";
			        		for(var i = 0; i<json.reviewList.length;i++){
			        			
			        			tag = 
			        			'<div class="message" style="display:flex;width:750px;padding-bottom: 50px;font-size: 15px!important;">'
								+'<button style="background: none;border: none;outline: none;display: flex;">'
								+'<div class="user_image" style="width: 45px;height: 45px;cursor: pointer;margin: 0 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">'
									+'<img height="45" width="45" src="/finalp/resources/img/'+json.reviewList[i].mem_refile+'" style="display: block;margin-left: auto;margin-right: auto;">'
								+'</div>'
							   +'</button>'
							   +'<div>'
							   +'<span style="font-size: 16px!important;font-weight: 600;">'+json.reviewList[i].mem_name+'&nbsp;&nbsp;<span style="color:gray;font-weight:400;font-size:14px!important">'+json.reviewList[i].rev_date+'</span></span>'
							   +'<p>'+json.reviewList[i].rev_con+'</p>'
							   +'</div>'
							   +'<div style="margin-top:1%;position: absolute;left: 87%;">'
								   +'<select id="p'+json.reviewList[i].rev_no+'">'
									  +'<option value="1">1</option>'
									  +'<option value="2">2</option>'
									  +'<option value="3">3</option>'
									  +'<option value="4">4</option>'
									  +'<option value="5">5</option>'
									  +'</select>'
									  +'</div>'
									  +'</div>';
									  $('#review').append(tag);	  
			        			starScript(json.reviewList[i].rev_no,json.reviewList[i].rev_star);
			        		}
			        		//$('#review').html(tag);
			        		$('#inputReviewContent').val("");
			        	},
			        	error: function(request, status, errorData){
			        		alert("error code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + errorData);
			        	}
			         });
	    	  };
		         
       		function starScript(no,star){
			  $('#p'+no).barrating({
				theme: 'fontawesome-stars',
				readonly : true,
				initialRating : star
			  });
      			   
       		}

	</script>
	
	<script>
      $(function(){
         function fetchHtml(){
            var html=$(".html").val();
            return html
         }
         function fetchCss(){
            var css=$(".css").val();
            return css
         }
            $(".innerbox").on("keyup",function(){
            
               var target = $("#live_update")[0].contentWindow.document;
               target.open();
               target.close();

               var html=fetchHtml();
               var css=fetchCss();

               $("body",target).append(html); 
               $("head",target).append("<style>"+css+"</style>");

            });
      }); 
    </script>

</div>


</body>
</html>