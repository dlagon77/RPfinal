<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script|Nanum+Pen+Script" rel="stylesheet">
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
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
			  height:43px;
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
				width: 100%;
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
                <li>
                	<a href="chart.do">통계</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

		

        <!-- Page Content -->
        <div id="page-content-wrapper" >
            <div class="container-fluid" >
			<a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">관리자 메뉴</a>
				<div class="row">

					<h1 style="margin-top:40px; font-family: 'Nanum Pen Script', cursive;"><i class="xi-message-o xi-x"></i>&nbsp;문의 관리</h1>
				</div>

				<div class="row">
										
					<!--  background color -->
					<div class="col-lg-12" style="background: #efeded;">
					<!-- 리스트 뽑는 foreach문 -->
					<c:if test="${!empty clist }">
						<c:forEach var="i" items="${clist}" begin="0" end="${clist.size() }">
							<div id="test${i.inq_no}" style="background-color:#efeded; display:flex;float:left;">

								<form action="#" style="margin-bottom:10px;margin-right:20px;">
									<div style="width:450px;height:650px; border:1px solid black;background-color:white; margin-left:15px; margin-top:15px;">
										<div>
											<table>
											  <tr style="vertical-align:top;">
												<td style="width:80px; border-right:1px solid #e8e3e3; text-align:center;">작성자</td>
												<td style="width:120px; border-right:1px solid #e8e3e3; text-align:center">${i.inq_writer }</td>
												<td style="width:120px; border-right:1px solid #e8e3e3; text-align:center">문의날짜</td>
												<td>${i.inq_date}</td>
											  </tr>
												<tr style="vertical-align:top;">
												<td colspan="4">문의내역</td>
												</tr>
											</table>
											<div style="padding:15px;">
												<textarea cols="56.5" rows="8" style="resize: none;" readonly="readonly">${i.inq_content}</textarea>
											</div>
											<table>
												<tr style="vertical-align:top;">
												<td colspan="4">답변하기</td>
												</tr>
											</table>
											<div style="padding:15px;"><textarea id="send${i.inq_no}" cols="56.5" rows="8" style="resize: none;"></textarea>
											</div>
										</div>
										<button type="submit" onclick="send('${i.inq_no}','${i.inq_writer}');">보내기</button>
									</div>
								 </form>
							</div>
						</c:forEach>
					</c:if>
					<!-- 리스트 뽑는 foreach문 -->
						
							<c:if test="${empty clist }">
								<tr>
									<td colspan="4">조회된 결과가 없습니다.</td>
								</tr>
							</c:if>
							
							
					   </div>
					   <!-- background-color end -->
					</div>
					
				</div>
			   
			   
			   
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
	<script>
		function send(num,name){
			var send = $("#send"+num).val();
			$.ajax({
				url:"sendContact.do",
				data:{inq_reply:send,inq_no:num},
				type:"post",
				success : function(result){
					if(result == "ok"){
						alert(name+"님에게 답변전송");
						$("#test"+num).remove();
					}else{
						alert(name+"님에게 답변전송실패");
					}
				},error: function(request, status, errorData){
					alert("error code : " + request.status + "\n" 
							+ "message : " + request.responsText 
							+ "\n" + "error : " + errorData);
				}
			});
			
		}
	</script>
</body>

</html>
