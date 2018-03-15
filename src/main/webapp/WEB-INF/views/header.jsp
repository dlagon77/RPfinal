<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Real Programmer</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
<!-- 지혜 -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->

   <!-- Css -->
    <link href="/finalp/resources/css/bootstrap.css" rel="stylesheet">
   <link href="/finalp/resources/css/style.css" rel="stylesheet">
   
  
   
  <!-- 지혜 -->
   <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->
   
   <link href='http://fonts.googleapis.com/css?family=Raleway:400,800,300' rel='stylesheet' type='text/css'>
   <link rel="stylesheet" type="text/css" href="/finalp/resources/css/normalize.css" />
   <link rel="stylesheet" type="text/css" href="/finalp/resources/css/set1.css" />
   
   <!--button css-->
   <link rel="stylesheet" type="text/css" href="resources/css/buttons.css" />
   
   <!-- XEicon -->
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
   
   <style>

      body{
         /*background-color:hsla(0, 0%, 93.3%, .4);*/
      }
      .sidenav {
         height: 100%;
         width: 240px;
         position: fixed;
         z-index: 1;
         top: 0;
         left: 0;
         background:hsla(0, 0%, 93.3%, .8);
         overflow-x: hidden;
         padding-top: 60px;
         display:none;
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
         /*transition: margin-left .5s;*/
         
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

<div id="mySidenav" class="sidenav" style="margin-top: 60px;display:none;">
     <div class="column">
        <a href="#"><i class="xi-home xi-x"></i>&nbsp;&nbsp;&nbsp; 홈</a>
        <a href="#"><i class="xi-equalizer xi-x"></i>&nbsp;&nbsp;&nbsp; 인기</a>
        <a href="tutorListView.do"><i class="xi-users xi-x"></i>&nbsp;&nbsp;&nbsp; 강사</a>
        <a href="#"><i class="xi-keyboard xi-x"></i>&nbsp;&nbsp;&nbsp;test</a>
     </div>

      <div class="column">
     <span style="color:#9b9b9b;display: block;padding: 8px 24px;font-size: 1.4rem;font-weight: 500;letter-spacing: .007px;">aeoufseu</span>
       <a href="#"><i class="xi-spinner-3 xi-spin xi-x"></i>&nbsp;&nbsp;&nbsp; About</a>
       <a href="qblist.do"><i class="xi-align-left xi-x"></i>&nbsp;&nbsp;&nbsp; 게시판</a>
       <a href="stinsertpage.do"><i class="xi-spinner-3 xi-spin xi-x"></i>&nbsp;&nbsp;&nbsp; Clients</a>
       <a href="#"><i class="xi-spinner-3 xi-spin xi-x"></i>&nbsp;&nbsp;&nbsp; Contact</a>
     </div>
       
</div>

<div id="main" style="margin-top:60px">

   <nav class="navbar navbar-default navbar-fixed-top" style="margin-bottom:0px;height: 60px;box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.12);">
      <div class="container-fluid" style="padding-right: 30px;padding-left: 30px;height:60px">
         <div class="navbar-header" style="margin-top: 5px;display:flex;width:50%">
            
            <img id="toggle" src="/finalp/resources/img/menu.png" alt="" style="margin-right:20px;float: left;height: 50px;padding: 15px 15px;font-size: 18px;line-height: 20px;" onclick="myFunction();">
            <a href="home.do">
               <img src="/finalp/resources/img/logo2.PNG" alt="">
            </a>
            <form style="margin-left:50px;margin-top:7px;display:flex">
                <input type="text" placeholder="강좌를 검색해보세요" style="height: 35px;width:350px;padding: 0 15px;border: 1px solid #37474f;background: transparent;">
               <button type="submit" class="button button--ujarak button--border-thin button--text-thick" style="height: 35px;margin:0">SEARCH</button>
            </form>
         </div>
         <div class="collapse navbar-collapse" id="main-menu">
            <ul class="nav navbar-nav navbar-right">
            <li>
            <button style="background: none;border: none;outline: none;display: flex;">
            <div class="user_image" style="width: 45px;height: 45px;cursor: pointer;margin: 0 8px;border-radius: 50%;background-color: transparent;overflow: hidden;">
             <c:if test="${ sessionScope.loginUser ne null }">
<!--                <img height="45" width="45" src="/finalp/resources/img/emma.jpg" style="display: block;margin-left: auto;margin-right: auto;"> -->
               
               <!-- 사용자그림 font awesome 라이브러리 -->
                <div style="font-size:4rem;color:Tomato;margin-top: 5px;">
                  <i class="fas fa-user-circle" style="display: block;margin-left: auto;margin-right: auto;"></i>
               </div> 
               
               </c:if>
            </div>
            </button>
            </li>
            <c:if test="${ sessionScope.loginUser eq null }">
               <li><a href="loginpage.do">로그인</a></li>
                  <li><a href="proinsertpage.do">회원가입</a></li>
            </c:if>
            
<!-- === HOVER DROPDOWN MENU TEST 18.03.11 JOONWOO ===  -->      
   <script>
    $(function(){
    $(".dropdown").hover(            
            function() {
                $('.dropdown-menu', this).stop( true, true ).fadeIn("fast");
                $(this).toggleClass('open');
//                 $('b', this).toggleClass("caret caret-up");                
            },
            function() {
                $('.dropdown-menu', this).stop( true, true ).fadeOut("fast");
                $(this).toggleClass('open');
//                 $('b', this).toggleClass("caret caret-up");                
            });
    });
    
</script>
<style>
.dropdown-menu>li>a {
    display: block;
    padding: 3px 20px;
    clear: both;
    font-weight: 400;
    line-height: 2.5;
    color: #333;
    white-space: nowrap;
}
</style>
            
            <!-- ===회원 로그인 시 18.03.11 JOONWOO ===  -->   
            <c:if test="${ sessionScope.loginUser ne null }">
<%--                  <li><a href="#about">${loginUser.mem_name}</a></li> --%>
<%--                  <a href="#about">${loginUser.mem_name}</a></li> --%>
                 <li class="dropdown">
<!--                      <ul class="nav navbar-nav navbar-right">    -->
<!--                              <li class="dropdown"> -->
                                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                     ${loginUser.mem_name}
                                </a>
                              <ul class="dropdown-menu" style="display: none;">
                        <c:url var="stusub" value="stumypage.do">
                           <c:param name="mem_no" value="${sessionScope.loginUser.mem_no }" />
                        </c:url> 
                              <c:if test="${ sessionScope.loginUser.mem_cate eq 'S' }">
                                 <li><a href="profpage.do">내 프로필(학생회원)</a></li>
<!--                                  <li><a href="stumypage.do">마이페이지</a></li> -->
                                 <li><a id="stusubsc" href="${stusub}">내 강좌 홈</a></li>    
                              </c:if>
                              <c:if test="${ sessionScope.loginUser.mem_cate eq 'T' }">
                                 <li><a href="profpage.do">내 프로필(강사회원)</a></li>
                                 <li><a href="tumypage.do">마이페이지</a></li>
                              </c:if>
<%--                         <c:url var="stusub" value="stusubsc.do"> --%>
<%--                            <c:param name="mem_no" value="${loginUser.mem_no }" /> --%>
<%--                         </c:url>  --%>
<%--                      <a id="stusubsc" href="${stusub}" class="list-group-item active">구독중인 강사 목록</a>   --%>
<%--                                <li><a id="stusubsc" href="${stusub}">내 강좌</a></li> --%>
                               <li><a href="#">쪽지함(준비중)</a></li>
                               <li class="divider"></li>
                               <li><a href="logout.do">로그아웃</a></li>
                              </ul>
<!--                              </li> -->
<!--                      </ul> -->
<!--                <li><a href="logout.do">로그아웃</a></li> -->
            </c:if>

<!-- === HOVER DROPDOWN MENU TEST 18.03.11 JOONWOO ===  -->            
           </ul>
         </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
   </nav>

   

   <a href="#page-top" class="cd-top">Top</a>


   
   <script>
      // For Demo purposes only (show hover effect on mobile devices)
      [].slice.call( document.querySelectorAll('a[href="#"') ).forEach( function(el) {
         el.addEventListener( 'click', function(ev) { ev.preventDefault(); } );
      } );
   </script>


    <!-- script -->
    <script src="/finalp/resources/js/jquery.js"></script>
    <script src="/finalp/resources/js/bootstrap.min.js"></script>
   <script src="/finalp/resources/js/modernizr.js"></script>
   <script src="/finalp/resources/js/script.js"></script>


<script>

function myFunction() {
    var x = document.getElementById("mySidenav");
   var y = document.getElementById("main");
   var b = document.getElementById("banner");
    if (x.style.display == "none") {
        x.style.display = "block";
      y.style.marginLeft = "240px";
      b.style.height = "265px";
      
    } else {
        x.style.display = "none";
      y.style.marginLeft = "0";
      b.style.height = "305px";
      
    }
}

</script>


</body>
</html>