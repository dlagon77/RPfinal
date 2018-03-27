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
.wrap{
	width: 100%;
	background-color: hsla(0, 0%, 93.3%, .4);
}

.content{
	width:1035px;
	height: 889px;
	background-color:white;
	margin-left: auto;
	margin-right: auto;
	display: block;

}

.explain{
	padding-top: 60px;
	
}

.header{
	padding-top:60px;
	padding-bottom: 20px;
	text-align:center;	
}

.tutor{
	width: 500px;
	height: 300px;
	border: 1px solid #eee;
	display: block;
}

.student{
	width: 500px;
	height: 300px;
	border: 1px solid #eee;
	display: block;
}

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
	
	

<div class="wrap">
	<div class="content">
		<div class="header">
			<img src="/finalp/resources/img/logo5.png">
			<hr>
			<h2>가입방법중 하나를 선택하세요</h2>
		</div>
		<hr>
		<div class="row" align="center">
			<div class="container">
			  	<div class="tutor">
			  		<div class="explain">
						<i class="xi-man xi-4x"></i>
				  		<p>강사회원으로 가입 시 강의, 과제, 시험을 등록하며<br> 수강생을 관리 할 수 있습니다.</p>
					</div>
					<button onclick="goTeacher()" class="btn btn-primary" style="left:250px; width:300px; height: 50px;"><span>강사회원으로 가입</span></button>
			  	</div>
				<script>
				goTeacher=function(){
					location.href = "proinsertpage.do"
				}
				</script>
			</div>
		
			<div class="container" style="padding-left:250px;">
				<div class="student">
					<div class="explain">
						<i class="xi-school xi-4x"></i>
				  		<p>수강생회원으로 가입 시 여러 강사들의 강의를 들으며<br>다른 회원들과 소통할 수 있습니다</p>
					</div>
					<button  onclick="goStudent()"  class="btn btn-primary" style="left:500px; width:300px; height: 50px;"><span>수강생회원으로 가입</span></button>
				</div>			
				<script>
				goStudent=function(){
					location.href = "stinsertpage.do"
				}
				</script>
			</div>
		</div>
	</div>
</div>

</body>
</html>