<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<body>

<!-- === BEGIN MYPAGE LEFT SIDE MENU ===  -->
	<div class="site-panel" style="margin-top: 50px;">
		<div class="container" style="display: inline-flex;">
			<div class="row" style="margin-left: 50px;margin-right: 0px;">
				<div style="width:180px;">
					<div class="sidebar">
						<div class="list-group">
								<c:url var="stusub" value="stumypage.do">
									<c:param name="mem_no" value="${loginUser.mem_no }" />
								</c:url> 
							<a id="stusubsc" href="${stusub}" class="list-group-item active">내 강좌 홈</a>  
							<a id="stusubmit" href="stusubmit.do" class="list-group-item">과제제출내역</a> 
							<a id="stuchangeTu" href="stuchangeTu.do" class="list-group-item">선생님 회원신청</a> 
							<a id="stuupdate" href="stuupdate.do" class="list-group-item">회원정보수정</a> 
							<a id="stumessage" href="stumessage.do" class="list-group-item">쪽지함</a>
							<a id="stumyboard" href="stumyboard.do" class="list-group-item">내가쓴글</a>
							<a id="stuanalist" href="stuanalist.do" class="list-group-item">datatable</a>
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
			</div>
		<!-- === END MYPAGE LEFT SIDE MENU ===  -->

</body>
</html>