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
<meta charset="UTF-8">
<title>글 수정하기</title>
</head>
<body>
<c:import url="../header.jsp" />
<hr> 
    <h3 align="center">QnA 게시글수정</h3>
    <div style="padding : 30px;">
        <form method="post" action="qbUpdate.do?q_no=${qboard.q_no }">
          <div class="form-group">
            <label>제목</label>
            <input type="text" name="q_title" class="form-control" required>
          </div>
          <div class="form-group">
            <label>내용</label>
            <textarea name="q_content" class="form-control" rows="5" required></textarea>
          </div>
          <a onclick="history.back()" class="btn btn-default">취소</a> 
          <button type="submit" class="btn btn-default">수정</button>
        </form>
    </div>
</body>
</html>