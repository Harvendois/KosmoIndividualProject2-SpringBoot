<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/static/css/stylesheet.css">
    
    <script src="https://kit.fontawesome.com/71e5004f27.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/static/js/script.js" defer></script>
    <script src="/static/js/mypage.js" defer></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
    <title>Jungha Cho Proj2</title>
</head>
<body>
	<!-- 네비게이션 바  -->
	<!--상단 고정-->
	<nav class="navbar navbar-expand-md" style="position: fixed;">
        
        <!-- Toggler/collapsibe Button -->
        <a class="navbar-brand" id="navbar_brand" href="#"> <i class="fa-solid fa-gear"></i> Jungha's Website <i class="fa-solid fa-code"></i></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <!-- Navbar links -->
        <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <c:if test="${empty sessionScope.id }" var="isLogin">
		          <li class="nav-item">
		            <a class="nav-link" href="<c:url value="/auth/Login.do"/>">Login <i class="fa fa-user-o"></i></a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link " href="<c:url value="/approach/Registration.do"/>">Registration <i class='fas fa-edit'></i></a>
		        </li> 
				</c:if>
				<c:if test="${not isLogin }">
		          <li class="nav-item">
		            <a class="nav-link" href="<c:url value="/auth/Logout.do"/>">Logout <i class="fa fa-user-plus"></i></a>
		          </li>
				</c:if>
				<li class="nav-item">
		            <a class="nav-link " href="<c:url value="/approach/About.do"/>">About <i class='fas fa-edit'></i></a>
		        </li> 
                <li class="nav-item">
		            <a class="nav-link " href="<c:url value="/approach/List.do"/>">Board <i class='fas fa-rectangle-list'></i></a>
		        </li> 
    			<li class="nav-item">
		            <a class="nav-link " href="<c:url value="/approach/MyPage.do"/>">MyPage <i class='fa-regular fa-circle-user'></i></a>
		        </li>                     
                <li class="nav-item">
		            <a class="nav-link " href="<c:url value="/approach/BetaFn.do"/>">BetaFn <i class='fas fa-atom'></i></a>
		        </li>
            </ul>
        </div>
    </nav>