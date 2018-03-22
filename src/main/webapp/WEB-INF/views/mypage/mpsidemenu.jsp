<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>

<style>
body{
/* font-family: 'Nanum Pen Script', cursive; */
font-family: 'Nanum Gothic', sans-serif;
}
a {
    text-decoration: none;
}

a:hover {
color: #3175af
}

a:focus, a:hover, a:active {
	outline: 0
}


.top-news {
	color: #fff;
	margin: 8px 0
}

.top-news em {
	font-size: 13px;
	margin-bottom: 8px;
	margin-bottom: 0;
	font-style: normal;
	display: block
}

.top-news em i {
	font-size: 14px
}

.top-news span {
	font-size: 18px;
	margin-bottom: 5px;
	display: block;
	text-align: left
}

.top-news a {
	display: block;
	text-align: left;
	padding: 10px;
	position: relative;
	margin-bottom: 10px
}

.top-news a .top-news-icon {
	right: 8px;
	bottom: 15px;
	opacity: .5;
	font-size: 35px;
	position: absolute;
	position-bottom:0px;
	filter: alpha(opacity = 30)
}

.top-news a .top-news-img {
	 width:80px;
	right: 8px; 
	bottom: 15px;
	opacity: .5;
	font-size: 35px;
	/* position: absolute;  */
	filter: alpha(opacity = 30)
}
.top-news-xeicon {
	width:80px;
	right: 8px; 
	bottom: 15px;
	opacity: .5;
	font-size: 35px;
	/* position: absolute;  */
	filter: alpha(opacity = 30)
}

.top-news .btn+.btn {
	margin-left: 0
}
/*==버튼 호버시 효과==*/
.blue-madison.btn {
	color: #fff;
	background-color: #578ebe
}

.blue-madison.btn:hover, .blue-madison.btn:focus, .blue-madison.btn:active,
	.blue-madison.btn.active {
	color: #fff;
	background-color: #437cae
}

.grey.btn {
	color: #333;
	background-color: #e5e5e5
}

.grey.btn:hover, .grey.btn:focus, .grey.btn:active, .grey.btn.active {
	color: #333;
	background-color: #d3d3d3
}

.grey.btn:active, .grey.btn.active {
	background-image: none;
	background-color: #c6c6c6
}

.grey.btn:active:hover, .grey.btn.active:hover {
	background-color: #ccc
}
</style>
<!-- <script src="http://ajax.googleapis.com/ajax/libs/webfont/1.4.10/webfont.js"></script> -->
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Nanum+Pen+Script" rel="stylesheet">
</head>
<body>

<!-- === BEGIN MYPAGE LEFT SIDE MENU ===  -->
<!-- <link href="https://apiplug.com/assets/Backend/assets/global/css/components-rounded.css" rel="stylesheet"> -->
 	<div class="site-panel" style="margin-top: 50px;">
		<div class="container" style="display: inline-flex;">
<%-- 			<div class="row" style="margin-left: 50px;margin-right: 0px;">
				<div style="width:180px;">
					<div class="sidebar">
						<div class="list-group">
						--%>
								<c:url var="stusub" value="stumypage.do">
									<c:param name="mem_no" value="${loginUser.mem_no }" />
								</c:url> 
								<%--
							<a id="stusubsc" href="${stusub}" class="list-group-item active">수강 홈</a>  
							<a id="stusubmit" href="stusubmit.do" class="list-group-item">과제 제출 내역</a> 
							<a id="stumyboard" href="stumyboard.do" class="list-group-item">내 작성 글</a>
							<a id="stumessage" href="stumessage.do" class="list-group-item">쪽지함</a>
							<a id="stuchangeTu" href="stuchangeTu.do" class="list-group-item">강사회원 신청</a> 
							<a id="stuanalist" href="stuanalist.do" class="list-group-item">datatable</a>
<!-- 							<a id="stuupdate" href="stuupdate.do" class="list-group-item">내 프로필 보기</a>  -->
<script>
	$('#stumypage').removeClass('list-group-item active');
	$('#stusubsc').removeClass('list-group-item active');
	$('#stuquestion').removeClass('list-group-item active');
	$('#stusubmit').removeClass('list-group-item active');
	$('#stuanalist').removeClass('list-group-item active');
	$('#stuchangeTu').removeClass('list-group-item active');
	$('#stuupdate').removeClass('list-group-item active');
	$('#stumessage').removeClass('list-group-item active');
	$('#stumyboard').removeClass('list-group-item active');
</script>
						</div>
					</div>
				</div>
			</div>  --%>
		<!-- === END MYPAGE LEFT SIDE MENU ===  -->
<%-- 			<a id="stusubsc" href="${stusub}" class="list-group-item active">수강 홈</a>   --%>
        <div class="roww">
        <!-- ============ -->
              <div style="width:250px;">
                    <div class="top-news" >
                      <a href="${stusub}" id="stumysubc" class="btn grey" style="  display:  inline-flex;">
                      <div style="width:150px;">
					<span>1 - 구독중인 강의</span>
					My subscription
					</div>
<!-- 			<i class="fas fa-desktop top-news-icon"></i> -->
				<!-- <i class="fa fa-database top-news-icon "></i> -->
				<div style="width:80px;">
				<img src="/finalp/resources/mypage/icon222.png" class="top-news-img">
				<!-- <i class="xi-face xi-5x"></i> -->
				</div>
				</a>
				</div>
			</div>
		<!-- </div> -->
		<!-- ============ -->
		<c:url var="myassign" value="MyAssignBoardList.do">
			<c:param name="mem_no" value="${sessionScope.loginUser.mem_no }" />
		</c:url>
		  <div style="width:250px;">
			<div class="top-news ">
				<a href="${myassign }" class="btn blue-madison" style="  display:  inline-flex;"> 
				<div style="width:150px;">
                      <span>2 - 과제 제출 내역</span>
                      <em>Task submission history</em>
                 </div>
					 <!-- <i class="fa fa-cogs top-news-icon"></i>  -->
					 <div style="width:80px;">
					 <i class="xi-document xi-4x" class="top-news-xeicon" style="margin-left: 18px;"></i>
					 </div> 
                      </a>
                    </div>
                  </div>
         <!-- ============ -->
			<c:url var="myqna" value="selectQnaBoardList.do">
						<c:param name="mem_no" value="${sessionScope.loginUser.mem_no }" />
					</c:url>
            <div style="width:250px;">
			<div class="top-news ">
				<a href="${myqna }" class="btn blue-madison" style="  display:  inline-flex;">
				<div style="width:150px;">
                      <span>3 - Q&A 내가 쓴 글</span>
                      <em>Task submission history</em>
                 </div>
					 <!-- <i class="fa fa-cogs top-news-icon"></i>  -->
					 <div style="width:80px;">
					 <i class="xi-document xi-4x" class="top-news-xeicon" style="margin-left: 18px;"></i>
					 </div> 
                      </a>
                    </div>
             </div>
             <!-- ============ -->
            <div style="width:250px;">
			<div class="top-news ">
				<a href="stumessage.do" class="btn blue-madison" style="  display:  inline-flex;">
				<div style="width:150px;">
                      <span>4 - 내가 본 시험</span>
                      <em>Task submission history</em>
                 </div>
					 <!-- <i class="fa fa-cogs top-news-icon"></i>  -->
					 <div style="width:80px;">
					 <i class="xi-document xi-4x" class="top-news-xeicon" style="margin-left: 18px;"></i>
					 </div> 
                      </a>
                    </div>
             </div>
            <!-- ============ -->
<%--             		<c:url var="myqna" value="selectQnaBoardList.do">
						<c:param name="mem_no" value="${sessionScope.loginUser.mem_no }" />
					</c:url>
                <div style="width:250px;">
                    <div class="top-news">
                      <a href="${myqna }" class="btn grey">
				<span>QNA내가쓴글테스트</span>
				
				<em>Hosted API for Dev.</em> 											
				
				<i class="fa fa-flask top-news-icon "></i>
				</a>
			</div>
		</div> --%>
		<!-- ============ -->
		<c:url var="myadminque" value="adminquestion.do">
			<c:param name="mem_no" value="${sessionScope.loginUser.mem_no }" />
			<c:param name="mpside" value="0" />
		</c:url>
		<div style="width:250px;">
			<div class="top-news ">
				<a href="${myadminque }" class="btn grey">
<!-- 				<a href="mypagequestionPage.do" class="btn grey"> -->
				<span>일대일 문의</span>
				Get Coding!	 
				<i class="fa fa-columns top-news-icon "></i>
				</a>
			</div>
		</div> 
	</div>	

</body>
</html>