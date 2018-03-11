<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사-프로필</title>
</head>
<body>
<c:import url="../header.jsp" />

<!------------- MAIN PAGE CONTENT AREA --------->
	<div class="site-panel" style="margin-top: 50px;">
		<div class="container" style="display: inline-flex;">
			<div class="row" style="margin-left: 50px;">
				<div style="width:180px;">
					<div class="sidebar">
						<div class="list-group">
							<a href="tumypage.do" class="list-group-item active">강사 방송국 프로필</a>
							<a href="#" class="list-group-item">알림판</a> 
							<a href="#" class="list-group-item">강좌 홈페이지로</a> 
							<a href="#" class="list-group-item">선생님 정보</a> 
							<!-- <a href="#" class="list-group-item">My Liftings</a>
							<a href="#" class="list-group-item">My Documents</a> 
							<a href="#" class="list-group-item">Bidding History</a> 
							<a href="#" class="list-group-item">My Payments</a> -->
						</div>
					</div>
				</div>
			</div>

			        <div>
            <div class="panel panel-default" style="margin-left: 30px;width: 850px;height:  500px;" >
                
                <div class="panel-body">
                    <div class="list-group">
                        <a class="list-group-item" style="display: inline-flex;width: 800px; background-color:#F2F2F2">
                            <div>
							<img src="http://cfile25.uf.tistory.com/image/993C3B4E5A9AC69F26578A" width="150px" class="img-circle list-group-item-image">
							</div>
							<div style="margin-top: 40px;margin-left: 20px;">
                            <h4 class="list-group-item-heading">Arin Ohmygirl</h4>
                            <p class="list-group-item-text">Arin Industries</p>
							</div>
							<script>
							function clickBtn(){
								location.href='http://www.naver.com';
							}
							</script>
							<div class="button-btn">
							<button type="button" class="btn" onclick="clickBtn();" style="margin-top: 100px;">프로필 수정하기</button></div>
                        </a>
                        
                    </div>
					<div style="display: inline-flex;">
					<div>
					<iframe width="360" height="203" src="https://www.youtube.com/embed/LwLh5Pq1Ml4?rel=0&amp;showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
					</div>
						<div id="youtube-right" style="margin-left: 30px;  margin-top: 10px;">
							<div style="margin-bottom: 20px;">
							<h4 class="list-group-item-heading">배열 기초 강의</h4>
							</div>
							<div>
								<p class="list-group-item-text">배열은 연관된 정보를 그루핑하는데 사용한다.<br>이해를 돕기위해서 비유를 들어보겠다.(비유는 이해를 돕기<br>위한 것일 뿐이다. 비유가 오히려 이해에 방해될 수 있다. 비유<br>가 도움되지 않는다면 뒤에서 언급될 기숙적인 설명을 보자.)</p>
							</div>
						</div>
					</div>
                </div>
            </div>
        </div>

		</div>
	</div>

</body>
</html>