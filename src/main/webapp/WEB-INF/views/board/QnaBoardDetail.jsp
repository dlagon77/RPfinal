<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/css/bootstrap.css">
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<meta charset="UTF-8">
<title>QnA 게시판</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>	
<!-- 	<link href="resources/css/style.css" rel="stylesheet"> -->
</head>
<body>
	<c:import url="../header.jsp" />
	<div id="banner" style="height:305px;background-image: url('/finalp/resources/img/board.jpg');background-size:cover;"></div>
	<div class="container">
        <table class="table table-striped table-hover">
        	<br>
           <header>
        		<h2 style="font-weight:700" align="center"><i class="xi-label"></i>&nbsp;${qbDetail.q_title }</h2>
    	   </header>
	        <br>
	        <div style="float:right;">
	        	<small><img src="/finalp/resources/img/boardWriter.png" height="20" width="22">&nbsp; <strong><span>${qbDetail.q_writer }</span></strong></small>&nbsp;&nbsp;&nbsp;
	        	<small><img src="/finalp/resources/img/Calendar-256.png" height="20" width="22">&nbsp;<strong><span>${qbDetail.q_date }</span></strong></small>&nbsp;&nbsp;&nbsp;
	        	<small><img src="/finalp/resources/img/search.png" height="20" width="22">&nbsp;<strong>${qbDetail.q_read_cnt }</strong></small>&nbsp;&nbsp;&nbsp;
	        </div>
        	<%-- <small><img src="/finalp/resources/img/comment.png" height="20" width="22">&nbsp;<strong>${rlist }</strong></small> --%><br><hr>
    		<strong><h3>${qbDetail.q_content }</h3></strong>
   	    	
   	    	<br><br><br><br><hr>
	    	<div class="writeButton">            
	        	<a href='qblist.do' class="btn btn-warning"><i class="xi-bars xi-x"></i>&nbsp; 목록으로</a> 
	        		<c:if test="${!empty sessionScope.loginUser }">  
		        		<c:if test="${sessionScope.loginUser.mem_name eq qbDetail.q_writer}">
		            		<a href='qbUpdateform.do?q_no=${ qbDetail.q_no}' class="btn btn-warning" style="color:white">글 수정</a>
	            			<a href='qbDelete.do?q_no=${ qbDetail.q_no}' class="btn btn-warning" style="color:white">글 삭제</a>
	            		</c:if>
	            			<a href='qbInsertform.do' class="btn btn-warning"><i class="xi-pen xi-x"></i>&nbsp; 글 쓰기</a> 
	           	 	</c:if>           
	        </div>
        
        		<table id="reply">
   	      				<tr>
			       	<c:if test="${!empty rlist }">
			       		<c:forEach var="rlist" items="${rlist }">
					       	<td>
					 			<img src='/finalp/resources/img/boardWriter.png' height='20' width='22'>&nbsp; 
						 			<strong>
						 				<span>${rlist.q_re_writer }</span>
						 			</strong>
						 	    &nbsp;<img src="/finalp/resources/img/Calendar-256.png" height="20" width="22">&nbsp;	 
						 			<strong>
						 				<span>${rlist.q_re_date }</span>
						 				<c:if test="${sessionScope.loginUser.mem_name eq qbDetail.q_writer}">
					            			<a href='qbrDelete.do?q_no=${ rlist.q_no }&q_re_no=${ rlist.q_re_no}' class="btn btn-success">삭제</a>
					            		</c:if>
						 			</strong>
					 				<br>
					 			
					 				<small>
					 					<span>${rlist.q_re_con }</span>
					 				</small>
					 		<hr></td>     			
					 	</tr>
			      		</c:forEach>
			       	</c:if>		
   	      		</table><br><br>
   	      		<c:if test="${!empty sessionScope.loginUser }"> 
                	<p><img src="/finalp/resources/img/comment.png" height="20" width="22">&nbsp;Comment</p>
	         			<div class="form-group">
	            	 		<textarea rows="5" cols="127" class="form-control" id="send"  placeholder="댓글을 작성하세요."></textarea>	            	 		
	          			</div>
					<button type="submit" onclick="replyPlus('${loginUser.mem_no}','${qbDetail.q_no}')"  class="btn btn-warning" style="float:right;"><i class="xi-send xi-x"></i>&nbsp;댓글등록</button>
           			
           		</c:if>
           		<br><br><br>
   	  		 </div>
		</div>
  	 
<script>

	function replyPlus(mem_no,q_no){
		var send = $("#send").val();
		if(send == ""){
			console.log("댓글을 입력해주세요.");
		}else{
		
		  $.ajax({
			url:"qbReply.do",
			dataType:"json",
			type:"post",
			data:{"q_re_writer":mem_no,"q_re_con":send,"q_no":q_no},
			success:function(result){	
		;
				var jsonstr = JSON.stringify(result);
				var json = JSON.parse(jsonstr);
				var tag = "";
				for(var i=0; i<json.rlist.length; i++){
					tag += "<tr>"
			       			 +"<hr>"
			       			 +"<td><img src='/finalp/resources/img/boardWriter.png' height='20' width='22'>&nbsp;"
			 				 +"<strong><span>"
			 				 +decodeURIComponent(json.rlist[i].q_re_writer)
			 				 +"</span></strong>" 
			 				 +"<img src='/finalp/resources/img/Calendar-256.png' height='20' width='22'>&nbsp;"
			 				 +"<strong><span>"
			 				 +decodeURIComponent(json.rlist[i].q_re_date)
			 				 +"</span>"
		            		 +"&nbsp;&nbsp;<a href='qbrDelete.do?q_no="
		            		 +json.rlist[i].q_no
		            		 +"&q_re_no="
		            		 +json.rlist[i].q_re_no
		            		 +"' class='btn btn-success'>삭제</a>"
		            		 +"</strong>"
			 				 +"<br>"
			 				 +"<small><span>"
			 				 +decodeURIComponent(json.rlist[i].q_re_con)
			 				 +"</span></small>"
			 				 +"<hr></td>"       			
			      			+"</tr>";
				}
				$("#reply").html(tag);
				$("#send").val("");
			},error: function(request, status, errorData){
				alert("error code : " + request.status + "\n" 
						+ "message : " + request.responsText 
						+ "\n" + "error : " + errorData);
			}
		});  
		}
	}
</script>
</body>
</html>