<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- BootStrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>게시글 작성</title>
<style type="text/css">
	.wrap{
		width: 100%;
		background-color: hsla(0, 0%, 93.3%, .4);
		height: 887px;
	}
	
	.container{
		background-color: white;
		width: 900px;
		height: 560x;
	}
</style>
</head>
<body>
<c:import url="../header.jsp" />

	<div class="wrap">
		<div id="banner" style="height:305px;background-image: url('/finalp/resources/img/board.jpg');background-size:cover;"></div>
	    <div class="container" style="padding : 30px;">
 	   		<h2 style="font-weight:700" align="center">QnA 게시글작성</h2>
	        <form method="post" id="QnaBoardInsert" name="QnaBoardInsert" action="qbInsert.do">
	          <div class="form-group">
	            <label>글쓴이</label>
	            <input type="text" name="q_writer" readonly value="${ sessionScope.loginUser.mem_name}" class="form-control">
	          </div> 
	          <div class="form-group">
	            <label>제목</label>
	            <input type="text" name="q_title" class="form-control" placeholder="제목을 입력하세요." required>
	          </div>
	          <div class="form-group">
	            <label>내용</label>
	            <textarea name="q_content" class="form-control" rows="9" placeholder="내용을 입력하세요." required></textarea>
	          </div>
	          
	          <button type="submit" class="btn btn-warning" style="float:right; margin-left:5px;"><i class="xi-pen xi-x"></i>&nbsp;글 쓰기</button>
	          <a href='qblist.do' class="btn btn-warning" style="float:right;"><i class="xi-close-min xi-x"></i>&nbsp;취소</a> 
	        </form>
	    </div>
   	</div>
</body>
</html>