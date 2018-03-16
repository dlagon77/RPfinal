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
<body>
<c:import url="../header.jsp" />
<hr> 
    <h3 align="center">QnA 게시글작성</h3>
    <div style="padding : 30px;">
        <form method="post" id="QnaBoardInsert" name="QnaBoardInsert" action="qbInsert.do">
          <div class="form-group">
            <label>Title</label>
            <input type="text" name="q_title" class="form-control" placeholder="제목을 입력하세요." required>
          </div>
          <div class="form-group">
            <label>Content</label>
            <textarea name="q_content" class="form-control" rows="5" placeholder="내용을 입력하세요." required></textarea>
          </div>
          <div class="form-group">
            <label>Writer Member Number</label>
            <input type="text" name="q_writer" readonly value="${ sessionScope.loginUser.mem_no}" class="form-control">
          </div> 
          <a href='qblist.do' class="btn btn-default">취소</a> 
          <button type="submit" class="btn btn-default">작성</button>
        </form>
    </div>
</body>
</html>