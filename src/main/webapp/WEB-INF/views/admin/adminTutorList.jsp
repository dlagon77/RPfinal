<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script|Nanum+Pen+Script" rel="stylesheet">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- Bootstrap core CSS -->
    <link href="/finalp/resources/css/admin-bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/finalp/resources/css/admin-simple-sidebar.css" rel="stylesheet">


 <style>
	.memberprofile{
		border:1px solid #e8e3e3;
		width:230px;
		height:130px;
		margin-right:20px;
		float:left;
		margin-top:10px;
	}
	#profileImg{
		width:35%;
		height:70%;
		padding:10px;
	}
	li{
		list-style:none;
		font-size:12px;
		letter-spacing:-2px;
		
	}

		
		#delete{
			  background:orange;
			  color:#fff;
			  border:none;
			  position:relative;
			  height:25px;
			  width:100%;
			  font-size:1em;
			  padding:0 2em;
			  cursor:pointer;
			  transition:800ms ease all;
			  outline:none;
			}
			#delete:hover{
			  background:#fff;
			  color:orange;
			}
			#delete:before,#delete:after{
			  content:'';
			  position:absolute;
			  top:0;
			  right:0;
			  height:2px;
			  width:0;
			  background: orange;
			  transition:400ms ease all;
			}
			#delete:after{
			  right:inherit;
			  top:inherit;
			  left:0;
			  bottom:0;
			}
			#delete:hover:before,#delete:hover:after{
			  width:100%;
			  transition:800ms ease all;
			}
		body{
			width:100%;
		}
		table.type09 {
				border-collapse: collapse;
				text-align: left;
				line-height: 1.5;

			}
			table.type09 thead th {
				padding: 10px;
				font-weight: bold;
				vertical-align: top;
				color: #369;
				border-bottom: 3px solid #036;
			}
			table.type09 tbody th {
				width: 150px;
				padding: 10px;
				font-weight: bold;
				vertical-align: top;
				border-bottom: 1px solid #ccc;
				background: #f3f6f7;
			}
			table.type09 td {
				width: 350px;
				padding: 10px;
				vertical-align: top;
				border-bottom: 1px solid #ccc;
			}
			#mem_name:link { color: black; text-decoration: none;}
			 #mem_name:visited { color: black; text-decoration: none;}
			 #mem_name:hover { color: blue; text-decoration: none;}
			 #a:link,#b:link,#c:link { color: black; text-decoration: none;}
			 #a:visited,#b:visited,#c:visited { color: black; text-decoration: none;}
			 #a:hover,#b:hover,#c:hover { color: red; text-decoration: none;}
		
 </style>
 </head>
 <body>
 
 <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                 <li class="sidebar-brand">
                    <a href="home.do">
                        LEAP
                    </a>
                </li>
                <li>
                    <a href="mlist.do">회원 관리</a>
                </li>
                <li>
                    <a href="tlist.do">강사 관리</a>
                </li>
                <li>
                    <a href="blist.do">게시물 관리</a>
                </li>
                <li>
                    <a href="klist.do">금지어 관리</a>
                </li>
                <li>
                    <a href="clist.do">문의 관리</a>
                </li>
                <li>
                    <a href="kblist.do">금지어 포함 게시물</a>
                </li>
                <li>
                	<a href="chart.do">통계</a>
                </li>
                
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper" >
				<div class="container-fluid" >
				 <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">관리자 메뉴</a>
				   
				   <h1 style="margin-top:40px; font-family: 'Nanum Pen Script', cursive;"><i class="xi-emoticon-cool-o xi-x"></i>&nbsp;강사 관리</h1>
				   <div id="div1" style="width:200px;height:90px;padding:10px;border:1px solid #aaaaaa;margin-left:1100px;margin-top:-77px;background-color:red;" ondrop="drop(event)" ondragover="allowDrop(event)">
				   <i class="xi-trash-o xi-4x" style="margin-left:58px;"></i>
				   </div>
					<hr>
				   <div style="background-color:#efeded; display:flex;">
						<div style="padding:10px;">
					 
					 <!-- 회원 프로필 -->
					 <c:forEach items="${tlist}" var="list">
						  <div id="${list.mem_no }" class="memberprofile" style="background-color:white" draggable="true" ondragstart="drag(event)">
							
							<c:if test="${!empty list.mem_refile }">
								<img id="profileImg" src="/finalp/resources/img/${list.mem_refile }">
							</c:if>
							
							<c:if test="${empty list.mem_refile }">
								<img id="profileImg" src="https://st2.depositphotos.com/8440746/11596/v/450/depositphotos_115969634-stock-illustration-add-user-icon-man-account.jpg">
							</c:if>
							
							<div style="position:absolute; margin-top:-87px;margin-left: 118px;">
								<a id="mem_name"data-toggle="modal" href="#myModal${list.mem_no }" style="font-size:18px; letter-spacing:3px;font-weight: bold;">${list.mem_name}</a>
							</div>
							
							<div style="position:absolute; margin-top:-64px;margin-left: 46px;">
								
								<div style="maring-top:1%">
									<ul>
										<li id="a" data-toggle="modal" onclick="lecture(${list.mem_no})">업로드한 강의 : <a style="margin-left:5px;"> ${list.lecturecount}</a>&nbsp;개</li>
										<li id="b" data-toggle="modal" onclick="student(${list.mem_no})">수강생 인원 : <a  style="margin-left:5px;"> ${list.studentcount}</a>&nbsp;명</li>
										<li id="c" data-toggle="modal" onclick="review(${list.mem_no})">리뷰 개수 : <a id="c" style="margin-left:5px;">${list.reviewcount}</a>&nbsp;개</li>
									</ul>
								</div>
						</div>

						<div>
						<c:if test="${list.mem_black eq 'N' }">
							<button id="delete" name="mem_no" value="${list.mem_no }" onclick="javascript:location.href='mdelete.do?mem_no=${list.mem_no }'">탈퇴</button>
						</c:if>
						<c:if test="${list.mem_black eq 'Y' }">
							<button style="background-color:red;" id="delete" name="mem_no" value="${list.mem_no }" onclick="javascript:location.href='mdelete.do?mem_no=${list.mem_no }'">탈퇴</button>
						</c:if>
						</div>
					  </div>
					  
					  <!-- 회원 상세보기 Modal -->
					  
					  <div class="modal fade" id="myModal${list.mem_no }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
								  <div class="modal-dialog">
									<div class="modal-content">
									  <div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
										<h4 class="modal-title" id="myModalLabel" style="position: absolute;">회원정보 상세보기</h4>
									  </div>
									  <div class="modal-body">
										

										<table class="type09">
											<thead>
											<tr>
												<th scope="cols">항목</th>
												<th scope="cols">정보</th>
											</tr>
											</thead>
											<tbody>
											<tr>
												<th scope="row">이름</th>
												<td>${list.mem_name }</td>
											</tr>
											<tr>
												<th scope="row">전화번호</th>
												<td>${list.mem_phone }</td>
											</tr>
											<tr>
												<th scope="row">아이디</th>
												<td>${list.mem_id }</td>
											</tr>
											<tr>
												<th scope="row">전화번호</th>
												<td>${list.mem_phone }</td>
											</tr>
											<tr>
												<th scope="row">나이</th>
												<td>${list.mem_age }</td>
											</tr>
											<tr>
												<th scope="row">성별</th>
												<td>${list.mem_gen }</td>
											</tr>
											<tr>
												<th scope="row">관심사</th>
												<td>${list.mem_inter }</td>
											</tr>
											<tr>
												<th scope="row">블랙리스트</th>
												<td>${list.mem_black }</td>
											</tr>
											</tbody>
										</table>
										

									  </div>
									  <div class="modal-footer">
									  	<c:if test="${list.mem_black eq 'N' }">
									   		<button type="button" class="btn btn-default" data-dismiss="modal" onclick="javascript:location.href='mblack.do?mem_no=${list.mem_no }&mem_cate=${list.mem_cate}'">블랙리스트등록</button>
										</c:if>
										<c:if test="${list.mem_black eq 'Y' }">
									   		<button type="button" class="btn btn-default" data-dismiss="modal" onclick="javascript:location.href='mblack2.do?mem_no=${list.mem_no }&mem_cate=${list.mem_cate}'">블랙리스트해제</button>
										</c:if>
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									  </div>
								</div>
							</div>
						</div>
								
					  <!-- 회원 상세보기 Modal END -->	
					  		
					  <!-- 수강생 인원 Modal -->		
					  	
					  	<div class="modal fade" id="student" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
							<div class="modal-dialog">
									<div class="modal-content">
									  <div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
										<h4 class="modal-title" id="myModalLabel" style="position: absolute;">게시물 상세보기</h4>
									  </div>
									  <div class="modal-body">
										

										<table class="type09">
											<thead>
											<tr>
												<th scope="cols">수강생</th>
												<th scope="cols"></th>
											</tr>
											</thead>
											<tbody id="studentbody">
											
											</tbody>
										</table>
										

									  </div>
									  <div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									  </div>
									</div>
							</div>
						</div>
						
						<!-- 수강생 인원 Modal END -->
						
						<!-- 강의 갯수 Modal -->		
					  	
					  	<div class="modal fade" id="lecture" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
							<div class="modal-dialog" style="max-width:800px;">
									<div class="modal-content">
									  <div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
										<h4 class="modal-title" id="myModalLabel" style="position: absolute;">강의 상세보기</h4>
									  </div>
									  <div class="modal-body">
										

										<table class="type09">
											<thead>
											<tr>
												<th  scope="cols">강의 제목</th>
												<th  scope="cols">강의  내용</th>
											</tr>
											</thead>
											<tbody id="lecturebody">
											
											</tbody>
										</table>
										

									  </div>
									  <div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									  </div>
									</div>
							</div>
						</div>
						
						<!-- 강의 갯수 Modal END -->
						
					</c:forEach>
					
					
					
					<!-- 리뷰 갯수 Modal -->		
					  	
					  	<div class="modal fade" id="review" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
							<div class="modal-dialog" style="max-width:700px;">
									<div class="modal-content">
									  <div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
										<h4 class="modal-title" id="myModalLabel" style="position: absolute;">댓글 상세보기</h4>
									  </div>
									  <div class="modal-body">
										

										<table class="type09">
											<thead>
											<tr>
												<th  scope="cols" style="width:700px;">리뷰내용</th>
											</tr>
											</thead>
											<tbody id="reviewbody">
											
											</tbody>
										</table>
										

									  </div>
									  <div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									  </div>
									</div>
							</div>
						</div>
						
						<!-- 리뷰 갯수 Modal END -->
				

					</div>
				</div>
               
            </div>
            
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Bootstrap core JavaScript -->
    <script src="/finalp/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/finalp/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    
    function student(no){
    	$.ajax({
    		url:"modalStudent.do",
    		dataType:"json",
    		type:"post",
    		data:{"mem_no":no},
    		success:function(result){
    			var jsonStr = JSON.stringify(result);
    			var json = JSON.parse(jsonStr);
    			var tag = "";
    			if( json.s.length > 0){
	    			for(var i =0; i < json.s.length; i++){
	    				tag += "<tr>"
							+"<th scope='row'>수강생 이름</th>"
							+"<td>"+decodeURIComponent(json.s[i].mem_name,"utf-8")+"</td>"
						    +"</tr>";
	    			}
	    			$("#studentbody").html(tag);
	    			$("#student").modal();
    			}else{
       				alert("정보가 없습니다.");
       			}
    		},
    		error: function(request, status, errorData){
                alert("error code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + errorData);
             }
    		
    		
    	});
    }
    	function lecture(no){
        	$.ajax({
        		url:"modalLecture.do",
        		dataType:"json",
        		type:"post",
        		data:{"mem_no":no},
        		success:function(result){
        			var jsonStr = JSON.stringify(result);
        			var json = JSON.parse(jsonStr);
        			var tag = "";
        			if( json.l.length > 0){
	        			for(var i =0; i < json.l.length; i++){
	        				tag += "<tr>"
	    							+"<td>"+decodeURIComponent(json.l[i].lec_title,"utf-8")+"</td>"
	    							+"<td>"+decodeURIComponent(json.l[i].lec_con,"utf-8")+"</td>"
	    						    +"</tr>";
	        			}
	        			$("#lecturebody").html(tag);
	        			$("#lecture").modal();
        			}else{
           				alert("정보가 없습니다.");
           			}
        		},
        		error: function(request, status, errorData){
                    alert("error code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + errorData);
                 }     		
        	});
    	}	
        function review(no){
            $.ajax({
            	url:"modalReview.do",
            	dataType:"json",
            	type:"post",
            	data:{"mem_no":no},
            	success:function(result){
            		var jsonStr = JSON.stringify(result);
            		var json = JSON.parse(jsonStr);
            		var tag = "";
            		if(json.r.length > 0){
    	        		for(var i =0; i < json.r.length; i++){
    	        			tag += "<tr>"
    	    						+"<td>"+decodeURIComponent(json.r[i].rev_con,"utf-8")+"</td>"
    	    					    +"</tr>";		
   	        			}
   	        			$("#reviewbody").html(tag);
   	        			$("#review").modal();
           			}else{
           				alert("정보가 없습니다.");
           			}
           		},
           		error: function(request, status, errorData){
                      alert("error code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + errorData);
                }           		
            });	
    }
        
        function allowDrop(ev) {
            ev.preventDefault();
        }

        
        function drag(ev) {
            ev.dataTransfer.setData("text", ev.target.id);
        }

        function drop(ev) {
        	var data = ev.dataTransfer.getData("text");
        	alert(data);
           location.href="tdelete.do?mem_no="+data;
           
        }
    </script>
</body>
</html>