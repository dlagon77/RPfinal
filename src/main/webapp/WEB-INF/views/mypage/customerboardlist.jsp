<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일대일문의하기</title>
<link href="/finalp/resources/mypage/blacklistModal.css" rel="stylesheet">
<style>
.careerform{
    margin-bottom:  20px;
}
.tableone{
font-size:  18px;
font-weight:  bold;
margin-right: 0px;
width:250px;
display:  -webkit-inline-box;
}
.tabletwo{
font-size:  18px;

}
.tablethr{
margin: 15px;
display:  inline-flex; 
width:500px
}
section{
padding:350px;
    padding-top: 0px;
    padding-bottom: 0px;
	padding-left: 40px;"
}
.tablecate{
display:inline-grid;
}
.tableimg{

}
.largeboxone{
width:700px; height:620px;border:1px solid #E2E2E2; background-color:#FFF;
box-shadow: 0 4px 5px 0 rgba(0,0,0,0.1), 0 1px 10px 0 rgba(0,0,0,0.12), 0 2px 4px -1px rgba(0,0,0,0.2);
}
.largeboxtwo{
margin-top:20px;
width:700px; height:350px;border:1px solid #E2E2E2; background-color:#FFF;
box-shadow: 0 4px 5px 0 rgba(0,0,0,0.1), 0 1px 10px 0 rgba(0,0,0,0.12), 0 2px 4px -1px rgba(0,0,0,0.2);
}
.largeboxfour{
margin-top:20px;
width:700px; height:200px;border:1px solid #E2E2E2; background-color:#FFF;
box-shadow: 0 4px 5px 0 rgba(0,0,0,0.1), 0 1px 10px 0 rgba(0,0,0,0.12), 0 2px 4px -1px rgba(0,0,0,0.2);
}
.input-block {
	color: red;
    vertical-align: middle;
    border-top: 0;
    border-left: 0;
    border-right: 0;
    border-bottom: 1px solid #9e9e9e;
    border-radius: 0;
    width: 100%;
    min-height: 45px;
    font-weight: 400;
    font-size: 16px;
}
 input {
    width:100px;
    color: initial;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    font: 400 13.3333px Arial;
}
#userimg{
 width:130px;
 height:130px; 
 border-radius: 50%;
 margin-top: 20px;
 margin-left: -20px;
}
.container-login100 {
  width: 100%;  
  min-height: 100vh;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  padding: 15px;
  background: none;  
}
.wrap-login100 {
  /* width: 390px; */
  background: #fff;
  border-radius: 10px;
  overflow: hidden;
   padding: 77px 55px 33px 55px; 

  box-shadow: 0 5px 10px 0px rgba(0, 0, 0, 0.1);
  -moz-box-shadow: 0 5px 10px 0px rgba(0, 0, 0, 0.1);
  -webkit-box-shadow: 0 5px 10px 0px rgba(0, 0, 0, 0.1);
  -o-box-shadow: 0 5px 10px 0px rgba(0, 0, 0, 0.1);
  -ms-box-shadow: 0 5px 10px 0px rgba(0, 0, 0, 0.1);
}
</style>

</head>
<!-- === BEGIN BODY ===  -->
<body>
<!-- === BEGIN HEADER ===  -->
<c:import url="../header.jsp" />
<!-- === END HEADER ===  -->
<!-- === BEGIN CONTAINER ABOUT ===  -->
<div class="container about" style="display:flex;width:1284px;">
<c:import url="mpsidemenu.jsp" />
<!-- === BEGIN STU_PROFILE ===  -->

<section style="margin-bottom: 40px;padding-top: 0px;">
<div class="largeboxfour">
	<div style="margin: 20px;">	
		<div style="font-size: 20px;font-weight: 400;margin-bottom: 20px; color: #f44336!important;">1:1 문의하기</div>
		<p>궁금한 내용이 있으시면 <br>문의하기 클릭하세요</p>
		<div class="career-group" style="display:  inline-grid; width:500px;">
			<div class="tablethr" style="margin-left: 450px;">
				<a href="#" data-toggle="modal" data-target="#INQBOARD-modal"><input type="button" value = "문의하기"></a>
			</div>
		</div>
	</div>
</div>

	<!-- === ACCODIAN TEST BEGIN ===  -->
	<div style="margin-top:30px;">
		<div class="panel panel-default">
	        <div class="panel-heading">
	            <h3 class="panel-title">내 문의 내역</h3>
	        </div> 
       <!-- ========================================== ACCODIAN TEST 1 ===  -->
        <ul class="list-group">
        	<!-- ========================================== ACCODIAN TEST 1 ===  -->
<%--         		<c:set var="strrr" value="${fn:length(myadminquestion)) }" />
		<c:forEach items="${strrr}" varStatus="g">
			<c:set var="str" value="${g.count }"/>
		</c:forEach> --%>
			 	
<!-- 				시가니없덩! -->
         	<c:forEach var="x" items="${myadminquestion }" varStatus="g">
	            <li class="list-group-item" style="margin-bottom:10px;">
	                <div class="row toggle" id="dropdown-detail-${g.count}" data-toggle="detail-${g.count}">
	                    <div style="margin-left:20px;">
	                       	<p>질문 제목: ${x.inq_title}</p>
	                       	<p>질문 날짜: ${x.inq_date }</p>
	                    </div>
	                    <div style="margin-right:20px;"><i class="fa fa-chevron-down pull-right"></i>
	                    <c:if test="${x.inq_yn eq 'Y'}">
	                    <p style="color:red;margin-left:20px;">
							답변완료	                    
	                    </p>
	                    </c:if>
	                    <c:if test="${x.inq_yn eq 'N'}">
						 <p style="color:#8181F7;margin-left:20px;" >	답변대기</p>	                    
	                    </c:if>
	                    </div>
	                </div>
	                <div id="detail-${g.count}">
	               
	                    <hr></hr>
	                    <div>
	                            <div>
	                              <p>	<b>질문 내용:</b>  
	                              ${x.inq_content} </p>
	                            </div>
	                   </div>
	                            <hr></hr>
	                    <div>
	                             <div>
	                              <p>	답변 내용:  
	                            
	                              ${x.inq_reply} </p>
	                            </div>
	                    </div>
	                </div>
	            </li>
            		</c:forEach>
             
           <!-- ========================================== ACCODIAN TEST 1 ===  -->
        </ul>
	</div>
</div>
<!-- ========================================== ACCODIAN TEST SCRIPT ===  -->
<script>
$(document).ready(function() {
    $('[id^=detail-]').hide();
    $('.toggle').click(function() {
        $input = $( this );
        $target = $('#'+$input.attr('data-toggle'));
        $target.slideToggle();
    });
});
</script>
<!-- ========================================== ACCODIAN TEST SCRIPT ===  -->
	
	<!-- === ACCODIAN TEST END ===  -->
</section>
</div>
<!-- <script>
    function inqboardsubmit(){
    	var mem_no = ${sessionScope.loginUser.mem_no};
    	console.log(mem_no);
   		$.ajax({
  			url:"ajax/adminquestion.do",
  			data: { mem_no : mem_no },
  			type: "post",
  			success:function(result){
				if(result == "ok")
					alert("변경 성공!");
				else
					alert("변경 실패!");
			},
			error: function(request, status, errorData){
				alert("error code : " + request.status + "\n"
					+ "message : " + request.responseText + "\n"
					+ "error : " + errorData);
			}
  			});
    }
    </script> -->
    <div class="modal fade" id="INQBOARD-modal" >
             <div class="modal-dialog">
               <div class="container-login100">
               <div class="blacklist-container">
                  <a data-dismiss="modal" style="margin-left:90%;"><i class="xi-close-thin xi-2x"></i></a>
                  <h1>관리자에게 문의하기</h1><br>   
                   <form action="adminquestion.do" method="post">
                     <input type="hidden" name="mem_no" value="${sessionScope.loginUser.mem_no}">
                     <input type="hidden" name="mpside" value="2">
				     <p>받는사람</p>
                     <input type="text" value="관리자" readonly>
                     	<p>제목</p>
                     <input type="text" name="inqbtitle" placeholder="문의제목" required>
				
                     <textarea name="content" placeholder="문의사유" required></textarea>
                     
                     <input type="submit" class="blacklist blacklist-submit" value="문의하기">
<!--                      <button class="blacklist blacklist-submit" onclick="inqboardsubmit()">문의하기</button> -->
                    </form>
               </div>
            </div>
    	</div>
    </div> 

 </body>
</html>