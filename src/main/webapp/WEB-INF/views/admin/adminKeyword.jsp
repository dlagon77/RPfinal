<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script|Nanum+Pen+Script" rel="stylesheet">
<!-- Bootstrap core CSS -->
		<link href="/finalp/resources/vendor/bootstrap/css/admin-bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/finalp/resources/css/admin-simple-sidebar.css" rel="stylesheet">


	 <style>
			button{
			  background:#0366d6;
			  color:#fff;
			  border:none;
			  position:relative;
			  height:25px;
			  width:100%;
			  font-size:1em;
			  padding:0 2em;
			  cursor:pointer;
			  transition:800ms ease all;
			  outline:none;
			}
			button:hover{
			  background:#fff;
			  color:#0366d6;
			}
			button:before,button:after{
			  content:'';
			  position:absolute;
			  top:0;
			  right:0;
			  height:2px;
			  width:0;
			  background: #0366d6;
			  transition:400ms ease all;
			}
			button:after{
			  right:inherit;
			  top:inherit;
			  left:0;
			  bottom:0;
			}
			button:hover:before,button:hover:after{
			  width:100%;
			  transition:800ms ease all;
			}
			body{
				width:100%;
			}
			 table {
				width: 95%;
				border-top: 1px solid #e8e3e3;
				border-collapse: collapse;
			  }
			  th, td {
				border-bottom: 1px solid #e8e3e3;
				padding: 10px;
				text-align:center;
			  }
			th{
				text-align:center;
			}
	 </style>
</head>
<body>
<div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                  <li class="sidebar-brand">
                    <a href="home.do">
                        LEAP
                    </a>
                </li>
                <li>
                    <a href="mlist.do">회원 관리</a>
                </li>
                <li>
                    <a href="tlist.do">강사 관리</a>
                </li>
                <li>
                    <a href="blist.do">게시물 관리</a>
                </li>
                <li>
                    <a href="klist.do">금지어 관리</a>
                </li>
                <li>
                    <a href="clist.do">문의 관리</a>
                </li>
                <li>
                    <a href="kblist.do">금지어 포함 게시물</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper" >
            <div class="container-fluid" >
			 <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">관리자 메뉴</a>
               
			   <h1 style="margin-top:40px; font-family: 'Nanum Pen Script', cursive;"><i class="xi-close-circle-o xi-x"></i>&nbsp;금지어 관리</h1>
			   <form action="kinsert.do" style="margin-left:0px;margin-bottom:10px;margin-top:20px;">
				금지어 : <input type="text" name="key_word" style="width:250px">
				<input type="submit" value="추가">
			   </form>
					<table>
					  <thead>
						<tr>
						  <th style="width:130px;">금지어 번호</th><th style="width:500px;">금지어</th><th style="width:130px;">등록 날짜</th><th style="width:120px;"></th>
						</tr>
					  </thead>
					  <tbody>
					  <c:forEach var="list" items="${klist}">
						<tr>
						  <td>${list.key_no }</td><td>${list.key_word }</td><td>${list.key_date }</td>
						  <td><button onclick="javascript:location.href='kdelete.do?key_no=${list.key_no}'">삭제</button></td>
						</tr>
						</c:forEach>
					  </tbody>
					</table>
               				<c:if test="${empty klist }">
								<tr>
									<td colspan="4">조회된 결과가 없습니다.</td>
								</tr>
							</c:if>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Bootstrap core JavaScript -->
    <script src="/finalp/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/finalp/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

</body>
</html>