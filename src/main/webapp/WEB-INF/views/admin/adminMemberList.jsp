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

	#memberprofile{
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
			  background:#0366d6;
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
			  color:#0366d6;
			}
			#delete:before,#delete:after{
			  content:'';
			  position:absolute;
			  top:0;
			  right:0;
			  height:2px;
			  width:0;
			  background: #0366d6;
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
				   <h1 style="margin-top:40px; font-family: 'Nanum Pen Script', cursive;"><i class="xi-users xi-x"></i>&nbsp;회원관리</h1>
					<hr>
				   <div style="background-color:#efeded; display:flex;">
						<div style="padding:10px;">
						
					 <!-- 회원 프로필 -->
					 <c:forEach items="${mlist}" var="list">
						  <div class="mcheck" data-mem_no="${list.mem_no }" id="memberprofile" style="background-color:white" >
							
							<c:if test="${!empty list.mem_refile }">
								<img id="profileImg" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpCfuJiJoyelLhmMxfYr5u3FuPK9skk214NZ2d4ynHTOuln5BFEA">
							</c:if>
							
							<c:if test="${empty list.mem_refile }">
								<img id="profileImg" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpCfuJiJoyelLhmMxfYr5u3FuPK9skk214NZ2d4ynHTOuln5BFEA">
							</c:if>
							
							<div style="position:absolute; margin-top:-87px;margin-left: 118px;">
								<a id="mem_name"data-toggle="modal" href="#myModal${list.mem_no }" style="font-size:18px; letter-spacing:3px;font-weight: bold;">${list.mem_name}</a>
							</div>
							
							<div style="position:absolute; margin-top:-64px;margin-left: 46px;">
								
								<div style="maring-top:1%">
									<ul>
										<li id="a" data-toggle="modal" onclick="board(${list.mem_no})">작성한 게시물 : <a style="margin-left:5px;"> ${list.boardcount}</a> 개</li>
										<li id="b" data-toggle="modal" onclick="reply(${list.mem_no})">작성한 댓글 : <a  style="margin-left:5px;"> ${list.replycount}</a> 개</li>
										<li id="c" data-toggle="modal" onclick="tclass(${list.mem_no})">수강중인 강사목록 <a id="c" style="margin-left:5px;"></a></li>
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
					  		
					  <!-- 게시물 갯수 Modal -->		
					  	
					  	<div class="modal fade" id="board" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
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
												<th style="text-align:center;" scope="cols">게시판 유형</th>
												<th style="text-align:center;" scope="cols">게시물 제목</th>
											</tr>
											</thead>
											<tbody id="boardbody">
											
											</tbody>
										</table>
										

									  </div>
									  <div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									  </div>
									</div>
							</div>
						</div>
						
						<!-- 게시물 갯수 Modal END -->
						
						<!-- 댓글 갯수 Modal -->		
					  	
					  	<div class="modal fade" id="reply" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
							<div class="modal-dialog" style="max-width:1000px;">
									<div class="modal-content">
									  <div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
										<h4 class="modal-title" id="myModalLabel" style="position: absolute;">댓글 상세보기</h4>
									  </div>
									  <div class="modal-body">
										

										<table class="type09">
											<thead>
											<tr>
												<th  scope="cols">게시판 유형</th>
												<th  scope="cols">게시글 제목</th>
												<th style="width:400px;"scope="cols">댓글 내용</th>
												<th scope="cols"></th>
											</tr>
											</thead>
											<tbody id="replybody">
											
											</tbody>
										</table>
										

									  </div>
									  <div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									  </div>
									</div>
							</div>
						</div>
						
						<!-- 댓글 갯수 Modal END -->
						
						
						<!-- 강의 갯수 Modal -->		
					  	
					  	<div class="modal fade" id="class" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
							<div class="modal-dialog" style="max-width:500px;">
									<div class="modal-content">
									  <div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
										<h4 class="modal-title" id="myModalLabel" style="position: absolute;">강사 상세보기</h4>
									  </div>
									  <div class="modal-body">
										

										<table class="type09">
											<thead>
											<tr>
												<th scope="cols">강사</th>
												<th scope="cols"></th>
											</tr>
											</thead>
											<tbody id="classbody">
												
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
    
    $(document).ready(function(){
    	$(window).scroll(function(){
    		
    		var scrollHeight = $(window).scrollTop() + $(window).height();
    		var documentHeight = $(document).height();
    		
    		if(scrollHeight==documentHeight){
    			var check = $(".mcheck:last").attr("data-mem_no");
    			
    		}
    	});
    });
    
    function board(no){
    	$.ajax({
    		url:"modalBoard.do",
    		dataType:"json",
    		type:"post",
    		data:{"mem_no":no},
    		success:function(result){
    			var jsonStr = JSON.stringify(result);
    			var json = JSON.parse(jsonStr);
    			var tag = "";
    			if( json.m.length > 0){
	    			for(var i =0; i < json.m.length; i++){
	    				if(json.m[i].bcateid == 2){
	    				tag += "<tr>"
								+"<th scope='row'>QNA게시판</th>"
								+"<td>"+decodeURIComponent(json.m[i].btitle,"utf-8")+"</td>"
							    +"</tr>";
	    				}else{
	    					tag += "<tr>"
								+"<th scope='row'>꿀팁게시판</th>"
								+"<td>"+decodeURIComponent(json.m[i].btitle,"utf-8")+"</td>"
							    +"</tr>";
	    				}
	    			}
	    			$("#boardbody").html(tag);
    				$("#board").modal();
    			}else{
    				alert("정보가 없습니다.");
    			}
    		},
    		error: function(request, status, errorData){
                alert("error code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + errorData);
             }
    		
    		
    	});
    }
    	function reply(no){
        	$.ajax({
        		url:"modalReply.do",
        		dataType:"json",
        		type:"post",
        		data:{"mem_no":no},
        		success:function(result){
        			var jsonStr = JSON.stringify(result);
        			var json = JSON.parse(jsonStr);
        			var tag = "";
        			if( json.r.length > 0){
	        			for(var i =0; i < json.r.length; i++){
	        				if(json.r[i].bcateid == 2){
	        				tag += "<tr>"
	    							+"<th scope='row'>QNA게시판</th>"
	    							+"<td>"+decodeURIComponent(json.r[i].btitle,"utf-8")+"</td>"
	    							+"<td>"+decodeURIComponent(json.r[i].re_con,"utf-8")+"</td>"
	    							+"<td><button id='delete' style='width:100px;' onclick='replydelete("+json.r[i].re_no+","+json.r[i].re_cateid+")'>삭제</button></td>"
	    						    +"</tr>";
	        				}else{
	        					tag += "<tr>"
	    							+"<th scope='row'>꿀팁게시판</th>"
	    							+"<td>"+decodeURIComponent(json.r[i].btitle,"utf-8")+"</td>"
	    							+"<td>"+decodeURIComponent(json.r[i].re_con,"utf-8")+"</td>"
	    							+"<td><button id='delete' style='width:100px;' onclick='replydelete("+json.r[i].re_no+","+json.r[i].re_cateid+")'>삭제</button></td>"
	    						    +"</tr>";
	        				}
	        			}
	        			$("#replybody").html(tag);
	        			$("#reply").modal();
        			}else{
        				alert("정보가 없습니다.");
        			}
        		},
        		error: function(request, status, errorData){
                    alert("error code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + errorData);
                 }
        		
        		
        	});
    }
    
    	function tclass(no){
    		
    		$.ajax({
        		url:"modalClass.do",
        		dataType:"json",
        		type:"post",
        		data:{"mem_no":no},
        		success:function(result){
        			var jsonStr = JSON.stringify(result);
        			var json = JSON.parse(jsonStr);
        			var tag = "";
        			if( json.c.length > 0){
	        			for(var i =0; i < json.c.length; i++){
	        				tag += "<tr>"
	    							+"<th scope='row'>강사 이름</th>"
	    							+"<td>"+decodeURIComponent(json.c[i].mem_name,"utf-8")+"</td>"
	    						    +"</tr>";
	        				
	        			}
	        			$("#classbody").html(tag);
	        			$("#class").modal();
        			}else{
        				alert("정보가 없습니다.");
        			}
        		},
        		error: function(request, status, errorData){
                    alert("error code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + errorData);
                 }
        		
        		
        	});
    		
    	}
    	
    	function replydelete(re_no,re_cateid){
    		document.location.href='rdelete.do?re_no='+re_no+'&re_cateid='+re_cateid;
    	}
    </script>
</body>
</html>