<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/css/bootstrap.css">
<meta charset="UTF-8">
<title>QnA 게시판</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

   <!-- Css -->
    <link href="resources/css/bootstrap.css" rel="stylesheet">
	<link href="resources/css/style.css" rel="stylesheet">



	<link href='http://fonts.googleapis.com/css?family=Raleway:400,800,300' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="resources/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/set1.css" />



	<!--button css-->
	<link rel="stylesheet" type="text/css" href="resources/css/buttons.css" />

	<style>
		body{
			background-color:hsla(0, 0%, 93.3%, .4);
		}
		.sidenav {
			height: 100%;
			width: 0;
			position: fixed;
			z-index: 1;
			top: 0;
			left: 0;
			background:hsla(0, 0%, 93.3%, .8);
			overflow-x: hidden;
			padding-top: 60px;
		}

		.sidenav a {
			padding: 8px 8px 8px 32px;
			text-decoration: none;
			font-size: 1.4rem;
			display: block;
		}

		.sidenav a:hover {
			/*color: #f1f1f1;*/
			background-color:#ccc;

		}

		.sidenav .closebtn {
			position: absolute;
			top: 0;
			right: 25px;
			font-size: 36px;
			margin-left: 50px;
		}

		#main {
			transition: margin-left .5s;
			padding: 16px;
		}

		@media screen and (max-height: 450px) {
		  .sidenav {padding-top: 15px;}
		  .sidenav a {font-size: 18px;}
		}
		.sidenav .column {
			border-bottom:1px solid #d3d3d3;
			padding: 12px 0;
		}
	</style>

</head>
<body>

<div id="mySidenav" class="sidenav" style="margin-top: 60px;">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <div class="column">
	  <a href="index2.html">홈</a>
	  <a href="#">인기</a>
	  <a href="#">강사</a>
	  <a href="#">test</a>
  </div>

  <div class="column">
	
		<span style="color:#9b9b9b;display: block;
    padding: 8px 24px;
    font-size: 1.4rem;
    font-weight: 500;
    letter-spacing: .007px;">aeoufseu</span>

		
		<a href="index2.html">About</a>
	  <a href="qblist.do">게시판</a>
	  <a href="#">Clients</a>
	  <a href="#">Contact</a>
  
</div>
</div>

<div id="main">

	<nav class="navbar navbar-default navbar-fixed-top" style="margin-bottom:0px;height: 60px;box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.12);">
		<div class="container-fluid" style="padding-right: 30px;padding-left: 30px;height:60px">
			<div class="navbar-header" style="margin-top: 5px;display:flex;width:50%">
				<div class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu">	
					<span class="bar1"></span>
					<span class="bar2"></span>
					<span class="bar3"></span>
			    </div>
				 <a class="navbar-brand top" style="margin-right:20px" onclick="openNav()">
					<img src="/finalp/resources/img/menu.png" alt="" style="margin-top: -2px;">
				</a>
				<a class="navbar-brand top" href="#">
					<img src="/finalp/resources/img/logo2.png" alt="" style="margin-top: -10px;">
				</a>

				<form style="margin-left:50px;margin-top:7px;display:flex">
				  <input type="text" placeholder="강좌를 검색해보세요" style="height: 35px;width:350px;
    padding: 0 15px;
    border: 1px solid #37474f;
    background: transparent;">
				 <!-- <input type="submit" value="go!" style="height: 35px;width:70px;
    color: #fff;
    font-weight: 700;
    text-transform: uppercase;
    border: none;
    border-radius: 0;
    background-color: #37474f;"> -->
				
				<button type="submit" class="button button--ujarak button--border-thin button--text-thick" style="height: 35px;margin:0">SEARCH</button>
				</form>
			</div>

			

			<div class="collapse navbar-collapse" id="main-menu">
			   <ul class="nav navbar-nav navbar-right">

				<li>
			   <button style="background: none;border: none;outline: none;display: flex;">
				<div class="user_image" style="width: 45px;height: 45px;cursor: pointer;margin: 0 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
					<img height="45" width="45" src="/finalp/resources/img/emma.jpg" style="display: block;margin-left: auto;margin-right: auto;">
				</div>
				
					
			   </button>
			   </li>
				<li><a href="#about">About</a></li>
				<li><a href="#portfolio">Logout</a></li>
			  </ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
</head>
<body>
<hr>
<div class="container">
        <table class="table table-striped table-hover">
           <h2 align="center">QnA 게시판</h2>
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>조회수</th>
                    <th>날짜</th>
                    <th>작성자</th>
                </tr>
            </thead>
            <tbody>
               <c:choose>
				<c:when test="${fn:length(qblist) > 0}">
					<c:forEach items="${qblist }" var="row">
						<tr>
							<td>${row.q_no }</td>
							<td>
								<c:url var="qbdv" value="qbDetail.do">
									<c:param name="q_no" value="${row.q_no }" />
								</c:url>
								<a href="${qbdv }">${row.q_title }</a>								
							</td>
							<td>${row.q_read_cnt }</td>
							<td>${row.q_date }</td>
							<td>${row.q_writer }</td>

						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
				</c:choose>
            </tbody>
        </table>
        
        <div class="writeButton">            
            <a href='#' onClick='fn_write()' class="btn btn-success">글쓰기</a>            
        </div>
</div>
	<a href="#page-top" class="cd-top">Top</a>



	<script>
		// For Demo purposes only (show hover effect on mobile devices)
		[].slice.call( document.querySelectorAll('a[href="#"') ).forEach( function(el) {
			el.addEventListener( 'click', function(ev) { ev.preventDefault(); } );
		} );
	</script>

  	<script src="/finalp/resources/js/jquery.js"></script>
    <script src="/finalp/resources/js/bootstrap.min.js"></script>
	<script src="/finalp/resources/js/modernizr.js"></script>
	<script src="/finalp/resources/js/script.js"></script>
<script>
//글쓰기
function fn_write(){
    
    var form = document.getElementById("boardForm");
    
    form.action = "<c:url value='/board/writeForm.do'/>";
    form.submit();
    
}
 
/* //글조회
function fn_view(code){
    
    var form = document.getElementById("boardForm");
    var url = "<c:url value='/board/QnaBoardDetail.do'/>";
    url = url + "?code=" + code;
    
    form.action = url;    
    form.submit(); 
} */
</script>
<script>

function openNav() {
    document.getElementById("mySidenav").style.width = "240px";
    document.getElementById("main").style.marginLeft = "240px";
    
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";

}


</script>
</body>
</html>