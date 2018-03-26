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
		
		.results-number{
			color: #999;
		    display: block;
		    margin-bottom: 10px;
		    text-transform: uppercase;
		    font-size:13px;
		}
</style>

	<!-- 별점플러그인 관련 링크 -->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
	<link rel="stylesheet" href="/finalp/resources/css/fontawesome-stars.css">
	
	
	
	<!-- icon관련 링크 -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	
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

</head>
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

			  <form style="margin-top:7px;display:flex">
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

	
  
<!-- About -->

<div class="container about" style="width:1284px">

	<section class="about" id="about" style="width:1284px">
		
			<div class="row">
			    
			    <div class="col-md-2 related-search">
			      <div class="row">
			        <div class="col-md-12 col-sm-4">
			          <h5 style="color:gray;margin:0 0 10px">검색 결과</h5>
			            <ul class="list-unstyled">
			                <li><a id="ass" href="#" class="category-link active" onclick="showDiv1();" style="font-size:15px;">문제</a></li>
			                <li><a id="test" href="#" class="category-link" onclick="showDiv2();" style="font-size:15px">test</a></li>
			                <li><a href="#" class="category-link"  style="font-size:15px">강의</a></li>
			            </ul>
			        </div>
			      </div>
			      <div class="margin-bottom-20"></div>
			      <div style="width: 100%;">
					    <script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<ins class="adsbygoogle" style="display: block; height: 600px;" data-ad-client="ca-pub-8806842758252812" data-ad-slot="1129585289" data-ad-format="auto" data-adsbygoogle-status="done"><ins id="aswift_1_expand" style="display:inline-table;border:none;height:600px;margin:0;padding:0;position:relative;visibility:visible;width:164px;background-color:transparent;"><ins id="aswift_1_anchor" style="display:block;border:none;height:600px;margin:0;padding:0;position:relative;visibility:visible;width:164px;background-color:transparent;"><iframe width="164" height="600" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}" id="aswift_1" name="aswift_1" style="left:0;position:absolute;top:0;width:164px;height:600px;"></iframe></ins></ins></ins>
					<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
					</script>
				</div>
				<div class="margin-bottom-20"></div>
			
			    </div>
			    
			    <div id="section1" class="col-md-10"><!-- section1 시작 -->
					
					<c:if test="${checkApply gt 0 or mem_no==tutor_no}">
					
			      <span class="results-number">검색 결과 ${searchAssCount }개</span>
			      <div class="results">
			 
					 <c:forEach items="${searchAssList }" var="row">
					 	<div class="inner-results">
						    <h3><a href="taskDetail.do?tutor_no=${tutor_no }&ass_no=${row.ass_no}&ass_sub_no=${row.ass_no }&mem_no=${loginUser.mem_no}" style="font-size:20px">${row.ass_no}번 - ${row.ass_title }</a></h3>
						    <ul class="list-inline up-ul" style="color: #999;font-size:13px">
						      <li>시간 제한: -초</li>
						      <li>맞은 사람: ${row.ass_cor_cnt}</li>
						      <li>정답률: ${row.ass_cor_cnt/Lecture.apply_count*100 }%</li>
						    </ul>
						    <p>${row.ass_pro}</p>
						    <!-- <ul class="list-inline down-ul">
						      <li><a href="/submit/1000">제출</a></li>
						    </ul> -->
					  	</div>
					<hr>
					 </c:forEach>
			
				 </div>
				 
			      <div class="margin-bottom-30"></div>
			      <div class="text-center">
			        <ul class="pagination" id="result-pagination">
			          
			        <!-- <li><a href="#" data-page="0">처음</a></li><li class="active"><a href="#" data-page="0">1</a></li><li class=""><a href="#" data-page="1">2</a></li><li class=""><a href="#" data-page="2">3</a></li><li class=""><a href="#" data-page="3">4</a></li><li><a href="#" data-page="49">마지막</a></li></ul> -->
			      	<c:forEach var="p" begin="${startPage }" end="${endPage }" step="1">
					<c:url var="page" value="search.do">
						<c:param name="search_content" value="${search_content }" />
						<c:param name="currentPage" value="${p }" />
						<c:param name="tutor_no" value="${tutor_no }"/>
						<c:param name="mem_no" value="${mem_no }"/>
					</c:url>
					<c:if test="${p ne currentPage }">
						<li>
							<a href="${page }">${p }</a> 
						</li>
					</c:if>
					<c:if test="${p eq currentPage }">	
						<li class="active">
							<a href="${page }"><b>${p }</b></a>
						</li>
					</c:if>
				</c:forEach>
				</ul>
			      </div>
			      
			      <div style="width: 100%;">
			    <script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
			<ins class="adsbygoogle" style="display: block; height: 90px;" data-ad-client="ca-pub-8806842758252812" data-ad-slot="1129585289" data-ad-format="auto" data-adsbygoogle-status="done"><ins id="aswift_3_expand" style="display:inline-table;border:none;height:90px;margin:0;padding:0;position:relative;visibility:visible;width:945px;background-color:transparent;"><ins id="aswift_3_anchor" style="display:block;border:none;height:90px;margin:0;padding:0;position:relative;visibility:visible;width:945px;background-color:transparent;"><iframe width="945" height="90" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}" id="aswift_3" name="aswift_3" style="left:0;position:absolute;top:0;width:945px;height:90px;"></iframe></ins></ins></ins>
			<script>
			(adsbygoogle = window.adsbygoogle || []).push({});
			</script>
			</div>
			<div class="margin-bottom-20"></div>
			
			</c:if>
			<c:if test="${checkApply <= 0 and mem_no!=tutor_no}">
				<span class="results-number">수강을 해야 정확한 정보를 검색할 수 있습니다!!</span>
			</c:if>
			    </div><!-- section1 끝 -->
			    
			    
			    <div id="section2" class="col-md-10" style="display:none"><!-- section2 시작 -->
				<c:if test="${checkApply gt 0  or mem_no==tutor_no}">
			      <span class="results-number">검색 결과 ${searchTestCount }개</span>
			      <div class="results">
			 
					 <c:forEach items="${searchTestList }" var="row">
					 	<div class="inner-results">
						    <h3><a href="testDetail.do?tutor_no=${tutor_no }&test_no=${row.test_no}&test_sub_no=${row.test_no }&test_no=${loginUser.mem_no}" style="font-size:20px">${row.test_no}번 - ${row.test_title }</a></h3>
						    <ul class="list-inline up-ul" style="color: #999;font-size:13px">
						      <li>시간 제한: ${row.test_lec_id }초</li>
						      <li>맞은 사람: ${row.test_cor_cnt}</li>
						      <li>정답률: ${row.test_cor_cnt/Lecture.apply_count*100 }%</li>
						    </ul>
						    <p>${row.test_pro}</p>
						    <!-- <ul class="list-inline down-ul">
						      <li><a href="/submit/1000">제출</a></li>
						    </ul> -->
					  	</div>
					<hr>
					 </c:forEach>
			
				 </div>
				 
			      <div class="margin-bottom-30"></div>
			      <div class="text-center">
			        <ul class="pagination" id="result-pagination">
			          
			        <c:forEach var="p2" begin="${startPage2 }" end="${endPage2 }" step="1">
					<c:url var="page" value="search.do">
						<c:param name="search_content" value="${search_content }" />
						<c:param name="currentPage2" value="${p2 }" />
						<c:param name="tutor_no" value="${tutor_no }"/>
						<c:param name="mem_no" value="${mem_no }"/>
					</c:url>
					<c:if test="${p2 ne currentPage2 }">
						<li>
							<a href="${page }">${p2 }</a> 
						</li>
					</c:if>
					<c:if test="${p2 eq currentPage2 }">	
						<li class="active">
							<a href="${page }"><b>${p2 }</b></a>
						</li>
					</c:if>
				</c:forEach>
				</ul>
			      </div>
			      
			      <div style="width: 100%;">
			    <script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
			<ins class="adsbygoogle" style="display: block; height: 90px;" data-ad-client="ca-pub-8806842758252812" data-ad-slot="1129585289" data-ad-format="auto" data-adsbygoogle-status="done"><ins id="aswift_3_expand" style="display:inline-table;border:none;height:90px;margin:0;padding:0;position:relative;visibility:visible;width:945px;background-color:transparent;"><ins id="aswift_3_anchor" style="display:block;border:none;height:90px;margin:0;padding:0;position:relative;visibility:visible;width:945px;background-color:transparent;"><iframe width="945" height="90" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}" id="aswift_3" name="aswift_3" style="left:0;position:absolute;top:0;width:945px;height:90px;"></iframe></ins></ins></ins>
			<script>
			(adsbygoogle = window.adsbygoogle || []).push({});
			</script>
			</div>
			<div class="margin-bottom-20"></div>
			</c:if>
			<c:if test="${checkApply <= 0 and mem_no!=tutor_no}">
				<span class="results-number">수강을 해야 정확한 정보를 검색할 수 있습니다!!</span>
			</c:if>
			
			
			    </div><!-- section2 끝 -->
			    
			    
			    
			    
			    
			    
			    
  		</div>
	
	</section>
	
	<hr>

	<section class="about" id="about" style="width:1284px;padding-top:0">
		<div class="row">

			

			</div>
	</section>
	




	<hr>

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

</div>


</body>
</html>