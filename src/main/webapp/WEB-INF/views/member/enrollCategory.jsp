<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
* {box-sizing: border-box;}

.container {
  position: relative;
  width: 50%;
  max-width: 300px;
  
  float: left;
  width: 33.33%;
  padding: 5px; 
}

.image {
  display: block;
  width: 500px;
  height: 500px;
  
}

.overlay {
  position: absolute; 
  bottom: 0; 
  background: rgb(0, 0, 0);
  background: rgba(0, 0, 0, 0.5); /* Black see-through */
  color: #f1f1f1; 
  width: 100%;
  transition: .5s ease;
  opacity:0;
  color: white;
  font-size: 20px;
  padding: 20px;
  text-align: center;
}

.container:hover .overlay {
  opacity: 1;
}

   .btn {
    position: absolute;
    top: 85%;
    left: 45%;
    transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    background-color: #f4511e;
    color: #FFFFFF;
    font-size: 16px;
    padding: 12px 24px;
    border: none;
    cursor: pointer;
    border-radius: 5px;
    text-align: center;
	transition: all 0.5s;
	
}

   .btn span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}
   .btn span:after {
	content: '\00bb';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

   .btn:hover span {
	padding-right: 25px;
}

   .btn:hover span:after {
	opacity: 1;
	right: 0;
}

.row::after {
	content: "";
	clear: both;
	display: table;
}

/*.container .btn:hover {
    background-color: lightcyan;
	color: darkgrey;
}*/
</style>
</head>
<body>
<c:import url="../header.jsp" />
	
	<h2>회원가입분류</h2>


<div class="row" align="center">
 <div class="container">
  <img src="/finalp/resources/img/teacher.png" alt="Avatar" class="image" align="center">
  
  <button onclick="goTeacher()" class="btn" style="left:250px; width:148px;"><span>강사회원</span></button>
  <script>
  	goTeacher=function(){
  		location.href = "proinsertpage.do"
  	}
  </script>
 </div>
 
 <div class="container" style="padding-left:250px;">
  <img src="/finalp/resources/img/student.png" alt="Avatar" class="image" align="center">
  
  <button  onclick="goStudent()"  class="btn" style="left:500px; width:148px;"><span>학생회원</span></button>
  <script>
  	goStudent=function(){
  		location.href = "stinsertpage.do"
  	}
  </script>
 </div>
</div>

</body>
</html>