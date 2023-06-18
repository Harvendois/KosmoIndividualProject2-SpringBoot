<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/template/Top.jsp"/>
<head>
    <link rel="stylesheet" href="/static/css/mypage.css">
    <script src="/static/js/mypage.js" defer></script>
</head>
<body> 
    	<div class="container">
		<!--     SIDE AREA -->
		    <div class="sideArea">
		        <div class="avatar">
		            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCNOdyoIXDDBztO_GC8MFLmG_p6lZ2lTDh1ZnxSDawl1TZY_Zw" alt="">
		            <div class="avatarName">Welcome,<br>John Doe</div>
		        </div>
		        <ul class="sideMenu">
		            <li><a href="javascript:void(0)" class="has-submenu"><span class="fa fa-table"></span>PRODUCT</a>
		                <ul class="submenu">
		                    <li><a href="index.php?c=product&a=list01"><span class="fa fa-list"></span>Product List</a></li>
		                    <li><a href="index.php?c=product&a=list02"><span class="fa fa-tags"></span>Category List</a></li>
		                </ul>
		            </li>
		            <li><a href="menu_list.php"><span class="fa fa-sitemap"></span>MENU</a></li>
		            <li><a href="invoice_list.php"><span class="fa fa-money"></span>INVOICE</a></li>
		            <li><a href="user_list.php"><span class="fa fa-user-o"></span>USER</a></li>
		            <li><a href="contact_list.php"><span class="fa fa-envelope-o"></span>CONTACT</a></li>
		        </ul>
		    </div>
		<!--     SIDE AREA -->
		    </div>
		    </body></html>

