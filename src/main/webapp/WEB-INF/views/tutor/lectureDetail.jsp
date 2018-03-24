<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#lec-container{
		width: 900px;
		padding-top: 30px;
		margin-left: auto;
		margin-right: auto;
		display: inline-block;
		vertical-align: top;
		align: center;
		margin-left: 25%;
		
	}
	
	
	#videoList{
		width: 500px;
		height: 850px;
		display: inline-block;
		margin-top: 30px;
		margin-left: 50px;
		overflow: auto;
		position: fixed;
	}
	
</style>
 <script type="text/javascript" src="/finalp/resources/js/jquery-3.3.1.min.js"></script>
</head>
<body>
<c:import url="../header.jsp" />
	<div id="lec-container">
		<iframe width="900" height="500" src="https://www.youtube.com/embed/${videoId}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
	
	
		<div class="desc">
			<h3 style="font-size: 2.6rem;font-weight: 400;line-height: 3rem;margin-top: 30px;padding-left: 10px;color:black!important">${ videoTitle }</h3>
			<h5 style="padding-left:10px;color:gray!important;">조회수 ${ Lecture.lec_readcount }</h5>
			<h4 style="padding-left:10px;color:gray!important;float:right;">${ videoTime }</h4>
		</div>
		<hr>
		
		<!--리뷰 등록 템플릿 -->
		<div class="message" style="display:flex;width:750px;margin-bottom: 50px;">
			<button style="background: none;border: none;outline: none;display: flex;">
				<div class="user_image" style="width: 45px;height: 45px;cursor: pointer;margin: 0 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
					<c:if test="${loginUser.mem_refile == null }">
						<img height="45" width="45" src="/finalp/resources/img/logo2.PNG" style="display: block;margin-left: auto;margin-right: auto;">
					</c:if>
					<c:if test="${loginUser.mem_refile != null }">
						<img height="45" width="45" src="/finalp/resources/img/${loginUser.mem_refile }" style="display: block;margin-left: auto;margin-right: auto;">
					</c:if>
				</div>
			</button>
			
			<form style="width:100%">
				<div class="form-group" style="font-size:15px;padding-top: 50px;">
					<input type="text" class="messageInput" id="inputReviewContent" placeholder="리뷰 추가" style="border:none;outline:none;border-bottom: solid 1px black;width:100%">
				</div>
				<button type="button" id="inputReviewButton" class="btn btn-primary" style="float:right" onclick="insertLectureReview();">리뷰등록</button>
			</form>
		</div>
		<!-- 리뷰 등록 템플릿 끝 -->
            
		<!-- 댓글 리스트 폼 -->
		<div id="review">
			<c:forEach items="${review }" var="row">
				<div class="message" style="display:flex;width:900px;padding-bottom: 50px;font-size: 15px!important;">
					<button style="background: none;border: none;outline: none;display: flex;">
						<div class="user_image" style="width: 45px;height: 45px;cursor: pointer;margin: 0 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
							<img height="45" width="45" src="/finalp/resources/img/${row.mem_refile }" style="display: block;margin-left: auto;margin-right: auto;">
						</div>
					</button>
					<div>
						<span style="font-size:16px!important;font-weight:500;">${row.mem_name }&nbsp;&nbsp;<span style="color:gray;font-weight:400;font-size:14px!important">${row.rev_date }</span></span>
						<p>${row.rev_con }</p>
					</div>
				</div>
			</c:forEach>
		</div>
		<!-- 댓글 리스트 폼 끝--> 
		<input id="video" type="hidden" value="${videoId }">
	</div>
	
<script type="text/javascript">
	function insertLectureReview(){
		var content = $('#inputReviewContent').val();
		var mem_no = '${loginUser.mem_no}';
		var videoId = $('#video').val();
		
		$.ajax({
			 url: "insertLectureReview.do",
			 data: {"rev_con" : content, "mem_no" : mem_no, "videoId" : videoId },
			 type: "post",
			 success: function(result){
				 if(result=="ok"){
					 listLectureReview();
				 }
				 else{
					 alert("리뷰 등록 fail!");
				 } 
			 }
			 
		});
	};
	
	function listLectureReview(){
		  
		  $.ajax({
	      	url: "selectLectureReview.do",
	      	data: {"videoId" : '${videoId}'},
	      	type: "post",
	      	dataType: "JSON",
	      	success: function(result){
	      		$('#review').html("");
	      		var jsonStr = JSON.stringify(result);
	      		var json = JSON.parse(jsonStr);
	      		var tag = "";
	      			
	      		for(var i = 0; i<json.reviewList.length;i++){
	      			
	      			tag += 
	      			'<div class="message" style="display:flex;width:900px;padding-bottom: 50px;font-size: 15px!important;">'
						+'<button style="background: none;border: none;outline: none;display: flex;">'
						+'<div class="user_image" style="width: 45px;height: 45px;cursor: pointer;margin: 0 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">'
							+'<img height="45" width="45" src="/finalp/resources/img/'+json.reviewList[i].mem_refile+'" style="display: block;margin-left: auto;margin-right: auto;">'
						+'</div>'
					   +'</button>'
					   +'<div>'
					   +'<span style="font-size: 16px!important;font-weight: 600;">'+json.reviewList[i].mem_name+'&nbsp;&nbsp;<span style="color:gray;font-weight:400;font-size:14px!important">'+json.reviewList[i].rev_date+'</span></span>'
					   +'<p>'+json.reviewList[i].rev_con+'</p>'
					   +'</div>'
					   +'</div>';
							  	  
	      			
	      		}
	      		
	      		$('#review').html(tag);
	      		$('#inputReviewContent').val("");
	      	},
	      	error: function(request, status, errorData){
	      		alert("error code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + errorData);
	      	}
	       });
	};
</script>
	
</body>
</html>