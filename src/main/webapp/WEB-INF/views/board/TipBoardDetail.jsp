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
<title>TIP 게시판</title>
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
        		<h2 style="font-weight:700" align="center"><i class="xi-label"></i>&nbsp;${qbDetail.tip_title }</h2>
    	   </header>
	        <br>
	        <div style="float:right;">
        
	        	<small><img src="/finalp/resources/img/boardWriter.png" height="20" width="22">&nbsp; <strong><span>${qbDetail.tip_writer }</span></strong></small>&nbsp;&nbsp;&nbsp;
	        	<small><img src="/finalp/resources/img/Calendar-256.png" height="20" width="22">&nbsp;<strong><span>${qbDetail.tip_date }</span></strong></small>&nbsp;&nbsp;&nbsp;
	        	<small><img src="/finalp/resources/img/search.png" height="20" width="22">&nbsp;<strong>${qbDetail.tip_read_cnt }</strong></small>&nbsp;&nbsp;&nbsp;
        	<%-- <small><img src="/finalp/resources/img/comment.png" height="20" width="22">&nbsp;<strong>${rlist }</strong></small> --%>
    		</div>
    		<br><hr>
    		<strong><h4>${qbDetail.tip_content }</h4></strong>
   	    	
   	    	<br><br><br><br><hr>
    	<div class="writeButton">            
        	<a href='tblist.do' class="btn btn-warning"><i class="xi-bars xi-x"></i>&nbsp; 목록으로</a>
        		<c:if test="${!empty sessionScope.loginUser }">  
	        		<c:if test="${sessionScope.loginUser.mem_name eq qbDetail.tip_writer}">
	            		<a href='tbUpdateform.do?q_no=${ qbDetail.tip_no}' class="btn btn-warning" style="color:white">글 수정</a>
            			<a href='tbDelete.do?q_no=${ qbDetail.tip_no}' class="btn btn-warning" style="color:white">글 삭제</a>
            		</c:if>
            			<a href='tbInsertform.do' class="btn btn-warning"><i class="xi-pen xi-x"></i>&nbsp; 글 쓰기</a> 
           	 	</c:if>           
        </div>
        <br><br>
        		<table id="reply">
   	      				<tr><hr>
			       	<c:if test="${!empty rlist }">
			       		<c:forEach var="rlist" items="${rlist }">
					       	<td>
					 			<img src='/finalp/resources/img/boardWriter.png' height='20' width='22'>&nbsp; 
						 			<strong>
						 				<span>${rlist.t_re_writer }</span>
						 			</strong>
						 	    &nbsp;<img src="/finalp/resources/img/Calendar-256.png" height="20" width="22">&nbsp;	 
						 			<strong>
						 				<span>${rlist.t_re_date }</span>
						 				<c:if test="${sessionScope.loginUser.mem_name eq rlist.t_re_writer}">
					            			<a href='tbrDelete.do?q_no=${ rlist.t_no }&q_re_no=${ rlist.t_re_no}' class="btn btn-warning">삭제</a>
					            		</c:if>
						 			</strong>
					 				<br>
					 			
					 				<small>
					 					<span>${rlist.t_re_con }</span>
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
				<button type="submit" onclick="replyPlus('${loginUser.mem_no}','${qbDetail.tip_no}')"  class="btn btn-warning" style="float:right;"><i class="xi-send xi-x"></i>&nbsp;댓글등록</button>
           			
           		</c:if>	
   	  		 </div>
		</div>
  	 
<script>

	function replyPlus(mem_no,q_no){
		var send = $("#send").val();
		if(send == ""){
			alert("댓글을 입력해주세요.");
		}else{
		
		  $.ajax({
			url:"tbReply.do",
			dataType:"json",
			type:"post",
			data:{"q_re_writer":mem_no,"q_re_con":send,"q_no":q_no},
			success:function(result){	
		;
				var jsonstr = JSON.stringify(result);
				var json = JSON.parse(jsonstr);
				var tag = "";
				for(var i=0; i<json.rlist.length; i++){
					if("${sessionScope.loginUser.mem_name}" == decodeURIComponent(json.rlist[i].t_re_writer)){
					tag += "<tr>"
			       			 +"<hr>"
			       			 +"<td><img src='/finalp/resources/img/boardWriter.png' height='20' width='22'>&nbsp;"
			 				 +"<strong><span>"
			 				 +decodeURIComponent(json.rlist[i].t_re_writer)
			 				 +"</span></strong>" 
			 				 +"<img src='/finalp/resources/img/Calendar-256.png' height='20' width='22'>&nbsp;"
			 				 +"<strong><span>"
			 				 +decodeURIComponent(json.rlist[i].t_re_date)
			 				 +"</span>"
		            		 +"&nbsp;&nbsp;<a href='tbrDelete.do?q_no="
		            		 +json.rlist[i].t_no
		            		 +"&q_re_no="
		            		 +json.rlist[i].t_re_no
		            		 +"' class='btn btn-warning'>삭제</a>"
		            		 +"</strong>"
			 				 +"<br>"
			 				 +"<small><span>"
			 				 +decodeURIComponent(json.rlist[i].t_re_con)
			 				 +"</span></small>"
			 				 +"<hr></td>"       			
			      			+"</tr>";
				}else{
					tag += "<tr>"
		       			 +"<hr>"
		       			 +"<td><img src='/finalp/resources/img/boardWriter.png' height='20' width='22'>&nbsp;"
		 				 +"<strong><span>"
		 				 +decodeURIComponent(json.rlist[i].t_re_writer)
		 				 +"</span></strong>" 
		 				 +"<img src='/finalp/resources/img/Calendar-256.png' height='20' width='22'>&nbsp;"
		 				 +"<strong><span>"
		 				 +decodeURIComponent(json.rlist[i].t_re_date)
		 				 +"</span>"
	            		 +"</strong>"
		 				 +"<br>"
		 				 +"<small><span>"
		 				 +decodeURIComponent(json.rlist[i].t_re_con)
		 				 +"</span></small>"
		 				 +"<hr></td>"       			
		      			+"</tr>";
					}
				}
				alert("댓글이 등록되었습니다.");
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