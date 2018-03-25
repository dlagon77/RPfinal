<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lecture play list</title>
  <style>
	
	#container{
		width: 1000px;
		margin: auto;
	}
	
/* 	#container p{
		display: inline; 
		vertical-align: top; 
		padding-top: 25px; 
		font-weight: 700;
	} */
	
	#container img{
		margin-bottom: 30px;
	}
	
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
	
	.styleVideoId{	
		display: inline-block;
		margin-right: 16px;
	}
	
	.styleTitle{
		width: 600px;
		height: 180px;
		display:inline-block;
		font-size: 20px;
		vertical-align: top;
	}
	.styleTitle p{
		font-size: 15px;
	}
	.styleDescription{
		display:inline-block;
	}
	
	.styleTime{
		display:inline-block;

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
	
  </style>
  <script type="text/javascript" src="/finalp/resources/js/jquery-3.3.1.min.js"></script>
<!--   <script type="text/javascript" src="/finalp/resources/js/lecturePlayList.js"></script> -->

</head>
<body>
<c:import url="../header.jsp" />

<div id="banner" style="height:305px;background-image: url('/finalp/resources/img/avatar.jpg');background-size:cover;background-position-y: -200px;"></div>

	<div style="background-color:hsla(0, 0%, 93.3%, .4);">
	
		<div class="container about" style="display:flex;width:1284px"">
			<div class="col-lg-9" style="display: inline-flex">
				<div class="profile" style="height: 96px;position: relative;display: flex;">
					<div class="user_image" style="width: 80px;height: 80px;margin: 20px 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
						<img height="80" width="80" src="/finalp/resources/img/profileupload/${Lecture.mem_refile }" style="display: block;margin-left: auto;margin-right: auto;">
					</div>
				</div>
	
				<div class="desc">
					<h3 style="font-size: 2.6rem;font-weight: 400;line-height: 3rem;margin-top: 30px;padding-left: 10px;">${Lecture.mem_name }</h3>
					<h5 style="padding-left:10px;color:gray">수강생 ${Lecture.apply_count }명</h5>
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
			  <a href="tutorHome.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}" class="navbar-brand" style="width:120px;color:gray"><span class="a">Home</span></a>
			  <a href="lecturePlayList.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}" class="navbar-brand" style="width:120px;color:gray"><span class="a">강의</span><div class="selected"></div></a>
			  <a href="taskList.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}" class="navbar-brand" style="width:120px;color:gray"><span class="a">과제</span></a>
			  <a href="testList.do?tutor_no=${tutor_no }&mem_no=${loginUser.mem_no}" class="navbar-brand" style="width:120px;color:gray"><span class="a">Test</span></a>

			  <form style="margin-top:7px;display:flex" action="search.do">
			  <div>
			  	<button type="submit" class="searchButton" style="outline:none"><img src="/finalp/resources/img/search.png" style="padding: 5px 30px;cursor:pointer"></button>
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
	
	<div id="container">
		<ul id="results" style="list-style:none;"></ul>
	</div>
	
	<script type="text/javascript">
		
		/* var channelID = '${id}';
		var apiKey = 'AIzaSyDMNDM5Kr0QdP2n9Rpb5xVn68waXWRsGmw';
	
		$.ajax({
			url:'https://www.googleapis.com/youtube/v3/search?key=' + apiKey +'&channelId=' + channelID + '&part=snippet,id&order=date&maxResults=20',
			dataType: 'jsonp',
			success: function(data){
				$.each(data.items, function(key, value){
					var fragment = $(document.createDocumentFragment());
					fragment
						.append([
							'<li>',
								'<a href="#">',
									'<div class="style1">',
										'<iframe width="560" height="315" src="https://www.youtube.com/embed/'+ value.id.videoId + '"frameborder="0" allowfullscreen></iframe>',
									'</div>',
									'<div class="style2">',
										'<strong>' + value.snippet.title + '</strong>',
									'</div>',
								'</a>',
							'</li>'
						].join(''));
					$('#results').append(fragment);
				});
			}
		}) */
	
		/* var channelID = '${channelId}';
		var apiKey = 'AIzaSyDMNDM5Kr0QdP2n9Rpb5xVn68waXWRsGmw';
	
		$.ajax({
			url:'https://www.googleapis.com/youtube/v3/search?key=' + apiKey +'&channelId=' + channelID + '&part=snippet,id&order=date&maxResults=20',
			dataType: 'jsonp',
			success: function(data){
				$.each(data.items, function(key, value){
					var fragment = $(document.createDocumentFragment());
					var temp = value.snippet.publishedAt;
					var time = temp.substring(0,10);
					fragment
						.append([
							'<li>',
								'<a href="lectureDeatil.do?videoId='+value.id.videoId+'&videoTitle='+value.snippet.title+'">',
									'<div class="styleVideoId">',
										'<img src=\"//img.youtube.com/vi/'+value.id.videoId+'/mqdefault.jpg\">',
									'</div>',
									'<div class="styleTitle">',
										'<strong>'+'&nbsp;&nbsp;&nbsp;' + value.snippet.title + '</strong>',
									'</div>',
									'<div class="styleDescription">',
										'<p>'+'&nbsp;&nbsp;&nbsp;' + value.snippet.description + '</p>',
									'</div>',
									'<div class="styleTime">',
										'<p>'+'&nbsp;&nbsp;&nbsp;' + time + '</p>',
									'</div>',
								
								'</a>',
							'</li>'
						].join(''));
					$('#results').append(fragment);
				});
			}
		}) */
		
		var channelID = '${channelId}';
		var apiKey = 'AIzaSyDMNDM5Kr0QdP2n9Rpb5xVn68waXWRsGmw';
	
		$.ajax({
			url:'https://www.googleapis.com/youtube/v3/search?key=' + apiKey +'&channelId=' + channelID + '&part=snippet,id&order=date&maxResults=20',
			dataType: 'jsonp',
			success: function(data){
				$.each(data.items, function(key, value){
					var fragment = $(document.createDocumentFragment());
					var temp = value.snippet.publishedAt;
					var time = temp.substring(0,10);
					fragment
						.append([
							'<li>',
								
									'<div class="styleVideoId">',
										'<a href="lectureDeatil.do?videoId='+value.id.videoId+'&videoTitle='+value.snippet.title+'&videoDescription='+value.snippet.description+'&videoTime='+time+'">',
											'<img src=\"//img.youtube.com/vi/'+value.id.videoId+'/mqdefault.jpg\">',
										'</a>',
									'</div>',
									'<div class="styleTitle">',
										'<strong style="font-size:24px;">' + value.snippet.title + '</strong>',
										'<p>'+ value.snippet.description + '</p>',
										
										'<div class="styleTime">',
											'<p> '+ time + '</p>',
										'</div>',
									'</div>',
								
							'</li>'
						].join(''));
					$('#results').append(fragment);
				});
			}
		})
	</script>
</body>
</html>