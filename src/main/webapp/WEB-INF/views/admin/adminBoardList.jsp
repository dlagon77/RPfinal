<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script|Nanum+Pen+Script" rel="stylesheet">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- Bootstrap core CSS -->
    <link href="/finalp/resources/vendor/bootstrap/css/admin-bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/finalp/resources/css/admin-simple-sidebar.css" rel="stylesheet">


 <style>
	
		button{
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
		button:hover{
		  background:#fff;
		  color:#0366d6;
		}
		button:before,button:after{
		  content:'';
		  position:absolute;
		  top:0;
		  right:0;
		  height:2px;
		  width:0;
		  background: #0366d6;
		  transition:400ms ease all;
		}
		button:after{
		  right:inherit;
		  top:inherit;
		  left:0;
		  bottom:0;
		}
		button:hover:before,button:hover:after{
		  width:100%;
		  transition:800ms ease all;
		}
		body{
			width:100%;
		}
		 table {
			width: 95%;
			border-top: 1px solid #e8e3e3;
			border-collapse: collapse;
		  }
		  th, td {
			border-bottom: 1px solid #e8e3e3;
			padding: 10px;
			text-align:center;
		  }
		th{
			text-align:center;
		}
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
               
			   <h1 style="margin-top:40px; font-family: 'Nanum Pen Script', cursive;"><i class="xi-paper-o xi-x"></i>&nbsp;게시물 관리</h1>
			 
			   
			   <select id="bcateid" name="bcateid" style="height:29px; width:130px;margin-left:30px;"> 
			   <option selected>게시판유형</option>
				   <option value="3">꿀팁게시판</option>
				   <option value="2">QNA게시판</option> 
				</select>
			   
			   <select id="check" name="check"style="height:29px; width:80px;"> 
			   <option selected>검색</option>
				   <option value="bwriter">작성자</option>
				   <option value="btitle">제목</option> 
				</select>
				<input id="send" name="send" type="text" style="width:250px"/>
				<input type="button" value="검색" onclick="search()"/>
			   
			   <input type="hidden" id="bcheck" value="0"/>
					<table>
					  <thead>
						<tr>
						  <th style="width:180px;">게시판 유형</th><th style="width:180px;">작성자</th><th>게시글 제목</th><th style="width:120px;"></th>
						</tr>
					  </thead>
					  <tbody id="aa">
					 
					  	<%-- <c:forEach items="${blist }" var="blist">
					  	<div>
					  		 	<c:if test="${blist.bcateid == 2}">
						  			<tr>
								 		<td>QNA게시판</td><td>${ blist.bwriter}</td><td>${ blist.btitle}</td><td>
								 			<c:url var="bdelete" value="bdelete.do">
								 				<c:param name="bno" value="${blist.bno }"></c:param>
								 				<c:param name="bcateid" value="${blist.bcateid }"></c:param>
								 			</c:url>
								 			<button onclick="location.href='${bdelete}'">삭제</button>
								 		</td>
									</tr>
								</c:if>
						  	
							
								<c:if test="${blist.bcateid == 3}">
						  			<tr>
								 		<td>꿀팁게시판</td><td>${ blist.bwriter}</td><td>${ blist.btitle}</td><td>
								 		<c:url var="bdelete" value="bdelete.do">
								 				<c:param name="bno" value="${blist.bno }"></c:param>
								 				<c:param name="bcateid" value="${blist.bcateid }"></c:param>
								 			</c:url>
								 			<button onclick="location.href='${bdelete}'">삭제</button>
								 		</td>
									</tr>
						  		</c:if>
						  	
						</div>
					  	</c:forEach> --%>
					  	
						<c:if test="${empty blist }">
								<tr>
									<td colspan="4">조회된 결과가 없습니다.</td>
								</tr>
						</c:if>
					  </tbody>
					</table>
               
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
    $(document).ready(function(){
    	
    	$.ajax({
    		url:"ablist.do",
    		dataType:"json",
    		type:"post",
    		data:{"size":10},
    		success:function(result){
    			var jsonStr = JSON.stringify(result);
    			var json = JSON.parse(jsonStr);
    			var tag = "";
    			for(var i =0; i < json.blist.length; i++){
    				
    				if(json.blist[i].bcateid == 2){	
    					tag += 
    							"<tr>"
							 		+"<td>QNA게시판</td>"
							 		+"<td>" 
							 		+ json.blist[i].bwriter
    								+"</td>"
							 		+"<td>" 
    								+"<a href='qbDetail.do?q_no=" + json.blist[i].bno + "'>" 
    								+ json.blist[i].btitle + "</a>"
    								+"</td>"
    								+"<td>"
							 		+"<c:url var='bdelete' value='bdelete.do'>"
							 				+"<c:param name='bno' value='" + json.blist[i].bno + "'></c:param>"
							 				+"<c:param name='bcateid' value='" + json.blist[i].bcateid + "'></c:param>"
							 			+"</c:url>"
							 			+"<button onclick=location.href='bdelete.do?bno="+json.blist[i].bno+"&bcateid="+json.blist[i].bcateid+"&check=2'>삭제</button>"
							 		+"</td>"
								+"</tr>";
    				}else if(json.blist[i].bcateid == 3){
    					tag +=	
	    						"<tr>"
						 		+"<td>꿀팁게시판</td>"
						 		+"<td>" 
						 		+ json.blist[i].bwriter
								+"</td>"
						 		+"<td>" 
								+"<a href='tbDetail.do?q_no=" + json.blist[i].bno + "'>" 
								+ json.blist[i].btitle + "</a>"
								+"</td>"
								+"<td>"
						 		+"<c:url var='bdelete' value='bdelete.do'>"
						 				+"<c:param name='bno' value='" + json.blist[i].bno + "'></c:param>"
						 				+"<c:param name='bcateid' value='" + json.blist[i].bcateid + "'></c:param>"
						 			+"</c:url>"
						 			+"<button onclick=location.href='bdelete.do?bno="+json.blist[i].bno+"&bcateid="+json.blist[i].bcateid+"&check=2'>삭제</button>"
						 		+"</td>"
							+"</tr>";
    				}
    			}
    			
    			$("#aa").html(tag);
    			$("#bcheck").val(9);
    		},error: function(request, status, errorData){
                alert("error code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + errorData);
            }
		}); 
    
    });
    
    
    $(document).ready(function(){
    	$(window).scroll(function(){
    		
    		var scrollHeight = $(window).scrollTop() + $(window).height();
    		var documentHeight = $(document).height();
    		
    		var tag = "";
    		if(scrollHeight==documentHeight){
    			var size = $("#bcheck").val();
    			
    			size = Number(size) + 9;
    			
    			 $.ajax({
            		url:"ablist.do",
            		dataType:"json",
            		type:"post",
            		data:{"size":size},
            		success:function(result){
            			var jsonStr = JSON.stringify(result);
            			var json = JSON.parse(jsonStr);
            			var tag = "";
            			for(var i =0; i < json.blist.length; i++){
            				if(json.blist[i].bcateid == 2){	
            					tag += 
            						"<tr>"
							 		+"<td>QNA게시판</td>"
							 		+"<td>" 
							 		+ json.blist[i].bwriter
    								+"</td>"
							 		+"<td>" 
    								+"<a href='qbDetail.do?q_no=" + json.blist[i].bno + "'>" 
    								+ json.blist[i].btitle + "</a>"
    								+"</td>"
    								+"<td>"
							 		+"<c:url var='bdelete' value='bdelete.do'>"
							 				+"<c:param name='bno' value='" + json.blist[i].bno + "'></c:param>"
							 				+"<c:param name='bcateid' value='" + json.blist[i].bcateid + "'></c:param>"
							 			+"</c:url>"
							 			+"<button onclick=location.href='bdelete.do?bno="+json.blist[i].bno+"&bcateid="+json.blist[i].bcateid+"&check=2'>삭제</button>"
							 		+"</td>"
								+"</tr>";
            				}else if(json.blist[i].bcateid == 3){
            					tag +=	"<tr>"
							 		+"<td>꿀팁게시판</td>"
							 		+"<td>" 
							 		+ json.blist[i].bwriter
    								+"</td>"
							 		+"<td>" 
    								+"<a href='tbDetail.do?q_no=" + json.blist[i].bno + "'>" 
    								+ json.blist[i].btitle + "</a>"
    								+"</td>"
    								+"<td>"
							 		+"<c:url var='bdelete' value='bdelete.do'>"
							 				+"<c:param name='bno' value='" + json.blist[i].bno + "'></c:param>"
							 				+"<c:param name='bcateid' value='" + json.blist[i].bcateid + "'></c:param>"
							 			+"</c:url>"
							 			+"<button onclick=location.href='bdelete.do?bno="+json.blist[i].bno+"&bcateid="+json.blist[i].bcateid+"&check=2'>삭제</button>"
							 		+"</td>"
								+"</tr>";
            				}
            			}
            			
            			$("#aa").html(tag);
            			$("#bcheck").val(size);
            		},error: function(request, status, errorData){
                        alert("error code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + errorData);
                    }
    			}); 	
    		}    		
    	});
    });
    
    function search(){
    	
    	var bcateid = $("#bcateid option:selected").val();
    	var check = $("#check option:selected").val();
    	var send = $("#send").val();
    	$.ajax({
    		url:"bSearch.do",
    		dataType:"json",
    		type:"post",
    		data:{"send":send,"check":check,"bcateid":bcateid},
    		success:function(result){
    			var jsonStr = JSON.stringify(result);
    			var json = JSON.parse(jsonStr);
    			var tag = "";
    			if( json.blist.length > 0){
	    			for(var i =0; i < json.blist.length; i++){
	    				
	    				if(json.blist[i].bcateid == 2){	
	    					tag += 
        						"<tr>"
						 		+"<td>QNA게시판</td>"
						 		+"<td>" 
						 		+ json.blist[i].bwriter
								+"</td>"
						 		+"<td>" 
								+"<a href='qbDetail.do?q_no=" + json.blist[i].bno + "'>" 
								+ json.blist[i].btitle + "</a>"
								+"</td>"
								+"<td>"
						 		+"<c:url var='bdelete' value='bdelete.do'>"
						 				+"<c:param name='bno' value='" + json.blist[i].bno + "'></c:param>"
						 				+"<c:param name='bcateid' value='" + json.blist[i].bcateid + "'></c:param>"
						 			+"</c:url>"
						 			+"<button onclick=location.href='bdelete.do?bno="+json.blist[i].bno+"&bcateid="+json.blist[i].bcateid+"&check=2'>삭제</button>"
						 		+"</td>"
							+"</tr>";
	    				}else if(json.blist[i].bcateid == 3){
	    					tag +=	"<tr>"
						 		+"<td>꿀팁게시판</td>"
						 		+"<td>" 
						 		+ json.blist[i].bwriter
								+"</td>"
						 		+"<td>" 
								+"<a href='tbDetail.do?q_no=" + json.blist[i].bno + "'>" 
								+ json.blist[i].btitle + "</a>"
								+"</td>"
								+"<td>"
						 		+"<c:url var='bdelete' value='bdelete.do'>"
						 				+"<c:param name='bno' value='" + json.blist[i].bno + "'></c:param>"
						 				+"<c:param name='bcateid' value='" + json.blist[i].bcateid + "'></c:param>"
						 			+"</c:url>"
						 			+"<button onclick=location.href='bdelete.do?bno="+json.blist[i].bno+"&bcateid="+json.blist[i].bcateid+"&check=2'>삭제</button>"
						 		+"</td>"
							+"</tr>";
	    				}		
    				}
	    			$("#aa").html(tag);
    		}else{
				alert("조회결과없음");
			}
    			
    			
    		},error: function(request, status, errorData){
                alert("error code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + errorData);
            }
		});  
    	
    }
    
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    
    </script>

</body>

</html>