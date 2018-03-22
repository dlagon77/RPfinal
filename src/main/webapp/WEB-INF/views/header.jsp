<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Real Programmer</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
<!-- 지혜 -->
<!--  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  -->

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
   <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
   
   <style>
	
	  .city {display:none}
	  	
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
	.dropdown-menu>li>a {
	    display: block;
	    padding: 3px 20px;
	    clear: both;
	    font-weight: 400;
	    line-height: 2.5;
	    color: #333;
	    white-space: nowrap;
	}


	.profile-img{
 		width:36px;
 		height:36px; 
		border-radius: 100%;
		margin-top:7px;
	}
</style>
</head>

<body>

<div id="mySidenav" class="sidenav" style="margin-top: 60px;display:none;">
     <div class="column">
        <a href="#"><i class="xi-home xi-x"></i>&nbsp;&nbsp;&nbsp; 홈</a>
        <a href="#"><i class="xi-equalizer xi-x"></i>&nbsp;&nbsp;&nbsp; 인기</a>
        <a href="tutorListView.do"><i class="xi-users xi-x"></i>&nbsp;&nbsp;&nbsp; 강사</a>
        <a href="#"><i class="xi-keyboard xi-x"></i>&nbsp;&nbsp;&nbsp; test</a>
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
                  <c:if test="${ sessionScope.loginUser.mem_refile ne null }">
<!--                   	<i class="fas fa-user-circle" style="display: block;margin-left: auto;margin-right: auto;"></i> -->
<%-- 	                  <img src="/finalp/resources/img/profileupload/${ sessionScope.loginUser.mem_refile }" class="profile-img" /> --%>
						<img src="/finalp/resources/img/profileupload/default-user.png" class="profile-img" />
                  </c:if>
			</c:if>                  
             <c:if test="${ sessionScope.loginUser ne null }">			
               <!-- 사용자그림 font awesome 라이브러리 -->
                  <c:if test="${ sessionScope.loginUser.mem_refile eq null }">
	                <div style="font-size:4rem;color:gray;margin-top: 5px;">
	                  	<i class="fas fa-user-circle" style="display: block; margin-left: auto; margin-right: auto;"></i>
<!-- 						<img src="/finalp/resources/img/profileupload/default-user.png" class="profile-img" /> -->
	                </div> 
                  </c:if>
			</c:if>                  
               
            </div>
            </button>
            </li>
            <c:if test="${ sessionScope.loginUser eq null }">
            	 <li><a data-toggle="modal" data-target="#loginModal1q" style="cursor:pointer;">로그인</a></li>
<!--                <li><a href="loginpage.do">로그인</a></li> -->
                  <li><a href="proinsertpage.do">회원가입</a></li>
            </c:if>
            
<!-- === LOGIN MODAL TEST 18.03.18 JOONWOO ===  -->
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/finalp/resources/mypage/logintestmodal/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/finalp/resources/mypage/logintestmodal/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/finalp/resources/mypage/logintestmodal/css/main.css">
<!--===============================================================================================-->
<script src="/finalp/resources/mypage/logintestmodal/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<!-- === LOGIN MODAL TEST 18.03.18 JOONWOO ===  -->            

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
	
            <!-- ===회원 로그인 시 18.03.11 JOONWOO ===  -->   
            <c:if test="${ sessionScope.loginUser ne null }">
                 <li class="dropdown">
                                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                     ${loginUser.mem_name}
                                </a>
                              <ul class="dropdown-menu" style="display: none;">
                        <c:url var="stusub" value="stumypage.do">
                           <c:param name="mem_no" value="${sessionScope.loginUser.mem_no }" />
                        </c:url> 
                              <c:if test="${ sessionScope.loginUser.mem_cate eq 'S' }">
                                 <li><a href="profpage.do">내 프로필(학생회원)</a></li>
                                 <li><a id="stusubsc" href="${stusub}">내 강좌 홈</a></li>    
                              </c:if>
                              <c:if test="${ sessionScope.loginUser.mem_cate eq 'T' }">
                                 <li><a href="profpage.do">내 프로필(강사회원)</a></li>
                                 <li><a href="tumypage.do">마이페이지</a></li>
                                  <li><a href="tutorHome.do?tutor_no=${loginUser.mem_no }">내 강의실</a></li>
                              </c:if>
                               <li><a href="#" onclick="document.getElementById('id01').style.display='block'">쪽지함</a></li>
                               <li class="divider"></li>
                               <li><a href="logout.do">로그아웃</a></li>
                              </ul>
            </c:if>

<!-- === HOVER DROPDOWN MENU TEST 18.03.11 JOONWOO ===  -->   
<!--===============================================================================================-->
     
           </ul>
         </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
   </nav>
   <a href="#page-top" class="cd-top">Top</a>

<!-- LOGIN MODAL TEST -->
<!--===============================================================================================-->

  <!-- Modal -->
		<div class="modal fade" id="loginModal1q">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="container-login100">
					<div class="wrap-login1000">
						<form name="loginform" action="login.do" method="post" class="login100-form validate-form" onsubmit="checking()">
							<span class="login100-form-title p-b-26"> Login </span>
							<span class="login100-form-title p-b-48"> 
								<img src="http://cfile24.uf.tistory.com/image/99669F3A5AADD1BE038E83" style="margin-top: 10px;">
							</span>

							<div class="wrap-input100 validate-input" data-validate="Valid email is: a@b.c">
								<input class="input100" type="email" id="mem_id" name="mem_id" style="outline: none;border: none;" >
								<span class="focus-input100" data-placeholder="Email"></span>
							</div>

							<div class="wrap-input100 validate-input" data-validate="Enter password">
								<span class="btn-show-pass"> <i class="zmdi zmdi-eye"></i></span> 
								<input class="input100" type="password" id="mem_pwd" name="mem_pwd" style="outline: none;border: none;" onclick="checkcheck()"> 
								<span class="focus-input100" data-placeholder="Password"></span>
							</div>
							<div style="margin-top: -20px;margin-bottom: 15px;">
								<label for="checker"><input type="checkbox" id="checker" name="checker"><span class="txt1"> E-mail 저장</span></label>
							</div>
							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button class="login100-form-btn">Login</button>
							</div>
							
							<div class="margin1">
								<span class="txt1"> Don’t have an account? </span>
								<a class="txt2" href="#"> &nbsp;Sign Up </a>
							</div>
							
							<div class="margin2">
								<a class="txt2" href="#"> forgot ID?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a> 
								<a class="txt2" href="#"> forgot PW? </a>
							</div>
						</form>
						<div class="modal-footerr">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--===============================================================================================-->
							
<!-- LOGIN MODAL TEST END-->
		    </
		 <!-- 쪽지함 모달 시작 -->
			   <div id="id01" class="w3-modal">
			 		<div class="w3-modal-content w3-card-4 w3-animate-zoom">
			 			 <header class="w3-container w3-blue"> 
			  				 <span onclick="document.getElementById('id01').style.display='none'" 
			  					class="w3-button w3-blue w3-xlarge w3-display-topright">&times;</span>
			   						<h2 style="margin:13px">쪽지함</h2>
			 			 </header>
			
			   <div class="w3-bar w3-border-bottom">
				   <button class="tablink w3-bar-item w3-button" onclick="openCity(event, 'Send');smsglist();">보낸쪽지함</button>
				   <button class="tablink w3-bar-item w3-button" onclick="openCity(event, 'Receiver');msglist();">받은쪽지함</button>
			   </div>
			
				  <div id="Send" class="w3-container city">
				  	 <div class="w3-container">
				  		<h4 style="margin:13px">쪽지함(발신)</h4>
			
		 	    	<table class="w3-table-all w3-hoverable">
					    <thead>
					      <tr class="w3-light-grey">				
					        <th>제목</th>
					        <th>작성자</th>
					        <th>받는사람</th>
					        <th>보낸날짜</th>
					      </tr>
					    </thead>
					    <tbody id="smsg">
					    
					    </tbody>
			  		</table>
					</div>
				 </div>

				  <div id="Receiver" class="w3-container city">
				     <div class="w3-container">
				  		<h4 style="margin:13px">쪽지함(수신)</h4>

 					<table class="w3-table-all w3-hoverable">
    					<thead>      
					      <tr class="w3-light-grey">
					        <th>제목</th>
					        <th>보낸사람</th>   
					        <th>보낸날짜</th>  
					      </tr>
					    </thead>
					    <tbody id="msg">
    					
				    	</tbody>
				  	</table>
				 <!--  쪽지함 모달 END -->
					   
					   	<!-- 페이징 처리 START -->
					   <%-- <div class="col-md-12">
					        <div class="text-center">
					         	<ul class="pagination">
			            			<li>              
				            			<c:url var="first" value="msgList.do">
											<c:param name="currentPage" value="1" />
										</c:url>
										<c:if test="${currentPage != 1}">
											<a href="${first }">FIRST</a>
										</c:if>
			            			</li>
			            			
			            			<li>
							            <c:url var="prev" value="msgList.do">
											<c:param name="currentPage" value="${currentPage - 1 }" />
										</c:url>
									    <c:if test="${currentPage != 1}">
											<a href="${prev }">PREV</a>
									    </c:if>
			            			</li>
			            			
			            			<li>
			            				<c:forEach var="p" begin="${startPage }" end="${endPage }" step="1">
											<c:url var="page" value="msgList.do">
												<c:param name="currentPage" value="${p }" />
											</c:url>
						  					<c:if test="${p ne currentPage }">
								 				<a href="${page }">${p }</a> 
						   					</c:if>
									</li>
									
									<li>
											<c:if test="${p eq currentPage }">	
											 	<a href="${page }"><b>${p }</b></a>
										    </c:if>
										</c:forEach>
									</li>
			            
			            			<li>
			            					<c:if test="${currentPage != maxPage }">
								              	<c:url var="next" value="msgList.do">
													<c:param name="currentPage" value="${currentPage + 1 }" />
												</c:url>
												<a href="${next }">NEXT</a>
			            			</li>
			            			
			            			<li>
							               	<c:url var="last" value="msgList.do">
													<c:param name="currentPage" value="${maxPage }" />
										   	</c:url>
											<a href="${last }">END</a>
						   					</c:if>
			           				</li>
			         		</ul>
			         	 </div>
			    	 </div> --%>
				   </div>
				   		<!-- 페이징 처리 END -->
				</div>
						<br><br>
					 	<!-- 쪽지함 CLOSE 버튼 -->	
					  <div class="w3-container w3-light-grey w3-padding">
					   		<button class="w3-button w3-right w3-white w3-border" 
					   			onclick="document.getElementById('id01').style.display='none'">Close</button>
					  </div>
					  	<!-- 쪽지함 CLOSE 끝 -->
					 </div>
					</div>
				</div>
					
					  <!-- 쪽지하 ㅁ모달 끝 -->

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
		<script src="/finalp/resources/mypage/logintestmodal/js/main.js"></script>

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
	<!-- ================== LOGIN COOKIE ======================= -->
		<script>
		function newCookie(name,value,days) {
		 var days = 10;   // 쿠키저장 일수
		                 
			 if (days) {
			   var date = new Date();
			   date.setTime(date.getTime()+(days*24*60*60*1000));
			   var expires = "; expires="+date.toGMTString(); 
			 }else var expires = "";
			   document.cookie = name+"="+value+expires+"; path=/"; 
		 }
		
		function readCookie(name) {
		   var nameSG = name + "=";
		   var nuller = '';
		  if (document.cookie.indexOf(nameSG) == -1)
		    return nuller;
		
		   var ca = document.cookie.split(';');
		  for(var i=0; i<ca.length; i++) {
		    var c = ca[i];
		    while (c.charAt(0)==' ') c = c.substring(1,c.length);
		  if (c.indexOf(nameSG) == 0) return c.substring(nameSG.length,c.length); }
		    return null; 
		}
		
		function delMem(a) {
			  eraseCookie('theName');   // make sure to add the eraseCookie function for every field
			  eraseCookie('theEmail');

			//   document.loginform.mem_id.value = '';   // add a line for every field
			   document.loginform.mem_pwd.value = ''; }
		
		function eraseCookie(name) {
		  newCookie(name,"",-1); 
		}
		
		function toMem(a) {
		    newCookie('theName', document.loginform.mem_id.value);     // add a new cookie as shown at left for every
		    newCookie('theEmail', document.loginform.mem_pwd.value);   // field you wish to have the script remember
		}
		function remCookie() {
			document.loginform.mem_id.value = readCookie("theName");
// 			document.loginform.mem_pwd.value = readCookie("theEmail");
		}
		
		function addLoadEvent(func) {
		  var oldonload = window.onload;
		  if (typeof window.onload != 'function') {
		    window.onload = func;
		  } else {
		    window.onload = function() {
		      if (oldonload) {
		        oldonload();
		      }
		      func();
		    }
		  }
		}
		
		addLoadEvent(function() {
		  remCookie();
		});
		</script>
		<script>
		function checking(){
			if(this.checker.checked){
				toMem(this)
			}
		}
		function checkcheck(){
			if(this.checker.checked == false){
		// 		delMem(this)
				 eraseCookie('theName');
			}
		}
		</script>
		<!-- ================== LOGIN COOKIE ======================= -->
<script> <!--쪽지함 스크립트 -->
document.getElementsByClassName("tablink")[0].click();

function openCity(evt, cityName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("city");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
    tablinks[i].classList.remove("w3-light-grey");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.classList.add("w3-light-grey");
}
	
/*  $(document).ready(function(){ */
	function smsglist(){
		$.ajax({
			 url:"msgList.do",
	         dataType:"json",
	         type:"post",
	         data:{"mem_no":${sessionScope.loginUser.mem_no}},
	         success:function(result){
	        	 var jsonStr = JSON.stringify(result);
	        	 var json = JSON.parse(jsonStr);
	        	 var smsg = "";
	        	 var loginUser = "${sessionScope.loginUser.mem_name}";
	        	 if( json.msglist.length > 0){
		        	 for(var i = 0; i < json.msglist.length; i++){
		        		 if(json.msglist[i].mes_writer == loginUser){
		        			 smsg +=
		        			 		"<tr>"
			       					 +"<td>"
			       					 +"<c:url var='myMsg' value='myMsgDetail.do'>"
									 +"<c:param name='mes_no' value='"+ json.msglist[i].mes_no + "'/>"
									 +"</c:url>"
									 +"<a href='${myMsg }'>"
									 +decodeURIComponent(json.msglist[i].mes_title)	
			       					 +"</a>"
			       					 +"</td>"		       					 
			       					 +"<td>"
			       					 +decodeURIComponent(json.msglist[i].mes_writer)
			       					 +"</td>"
			       					 +"<td>"
			       					 +decodeURIComponent(json.msglist[i].mes_receiver)
			       					 +"</td>"
			       					 +"<td>"
			       					 +json.msglist[i].mes_date
			       					 +"</td>"
						       		 +"</tr>";
						       	}
		        			 }	
					       }else{
					    	   smsg +=
		        		  			+"<tr>"
		        		  			+"<td colspan='4'>조회된 결과가없습니다.</td>"
		        		  			+"</tr>";
					        	}
					        	 
					        	 $("#smsg").html(smsg);
					         }
		         
					});
				};
	
 	function msglist(){
			 $.ajax({
				 url:"msgList.do",
		         dataType:"json",
		         type:"post",
		         data:{"mem_no":${sessionScope.loginUser.mem_no}},
		         success:function(result){
		        	 var jsonStr = JSON.stringify(result);
		        	 var json = JSON.parse(jsonStr);
		        	 var msg = "";
		        	 if( json.msglist.length > 0){
			        	 for(var i = 0; i < json.msglist.length; i++){
			        		 if(json.msglist[i].mes_receiver == "${sessionScope.loginUser.mem_name}"){
			        				 msg += 
			        					 "<tr>"
			        					 +"<td>"
			        					 +"<c:url var='myMsg' value='myMsgDetail.do'>"
										 +"<c:param name='mes_no' value='"+ json.msglist[i].mes_no + "'/>"
										 +"</c:url>"
										 +"<a href='${myMsg }'>"
										 +decodeURIComponent(json.msglist[i].mes_title)	
			        					 +"</a>"
			        					 +"</td>"
			        					 +"<td>"
			        					 +decodeURIComponent(json.msglist[i].mes_writer)
			        					 +"</td>"	
			        					 +"<td>"
				       					 +json.msglist[i].mes_date
				       					 +"</td>"
			        					 +"</tr>";
			        					 
			        		 	}
			        		 }
		        	 }else{
		 		  		msg +=
				  			+"<tr>"
				  			+"<td colspan='3'>조회된 결과가없습니다.</td>"
				  			+"</tr>";
					 }
        	 			$("#msg").html(msg);
			         },error: function(request, status, errorData){
			             alert("error code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + errorData); 	 
			         }
        	 	});
			};

</script>
</body>
</html>