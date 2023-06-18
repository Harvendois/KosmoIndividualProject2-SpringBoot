<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/template/Top.jsp"/>
	
    <div class="container" style="margin-top:50px"> 
    <c:if test="${! empty NotMember }">
		<div class="alert alert-danger d-flex align-items-center" role="alert" style="margin-top:230px">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Info:"><use xlink:href="#info-fill"/></svg>
		  <div>
		    <strong>Failure!</strong> ${requestScope.NotMember}
		  </div>
		</div>
	</c:if>  
    <c:if test="${empty sessionScope.id }" var="isLogin">
		<!--  로그인 전 -->
    	<div class="login-box">
		  <h2>Login</h2>
		  <form action="<c:url value="/auth/LoginProcess.do"/>" 
		  method="post">
		    <div class="user-box">
		      <input type="text" name="id">
		      <label>Username</label>
		    </div>
		    <div class="user-box">
		      <input type="password" name="pwd">
		      <label>Password</label>
		    </div>
		    <a href="#" id="submit-btn">
		      <span></span>
		      <span></span>
		      <span></span>
		      <span></span>
		      Submit
		    </a>
		  </form>
		</div>
	</c:if>
	<c:if test="${not isLogin }">
		<!-- 로그인 후 -->
		<div class="alert alert-success">
		  <button type="button" class="close" data-dismiss="alert">&times;</button>
		  <strong>Success!</strong> ${sessionScope.id}님 즐감하세요!
		</div>
	</c:if>
    </div><!--container-->
    <script>
    	$('#submit-btn').click(function(){
        $('form').submit();
    	});
    </script>
<!--<jsp:include page="/template/Footer.jsp"/>-->