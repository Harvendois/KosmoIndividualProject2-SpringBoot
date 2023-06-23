<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/template/Top.jsp"/>
<head>
    <link rel="stylesheet" href="/static/css/mypage.css">
    <script src="/static/js/mypage.js" defer></script>
</head>
<script>
    $(function(){
        $("#edit").click(function(){
            $('#table').css('hidden','disabled');
        });
    });
</script>
<body style="width:100%"> 
 
    	<div class="wrap">
		<!--     SIDE AREA -->
	
		    <div class="sideArea">
		        <div class="avatar">
		            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCNOdyoIXDDBztO_GC8MFLmG_p6lZ2lTDh1ZnxSDawl1TZY_Zw" alt="">
		            <div class="avatarName">Welcome,<br>${record.name}</div>
		        </div>
		        <ul class="sideMenu">
		            <li><a href="javascript:void(0)" class="has-submenu"><span class="fa fa-table"></span>My Stats</a>
		                <ul class="submenu">
		                    <li><a href="index.php?c=product&a=list01"><span class="fa fa-list"></span>Suggestion List</a></li>
		                    <li><a href="index.php?c=product&a=list02"><span class="fa fa-tags"></span>Favorite List</a></li>
		                </ul>
		            </li>
		            <li><a href="#"><span class="fa fa-sitemap"></span>My Interests</a></li>
		            <li><a href="invoice_list.php"><span class="fa fa-money"></span>My Purchase</a></li>
		            <li id="edit"><a href="<c:url value="/approach/MemberEdit.do?id=${record.id }"/>" ><span class="fa fa-user-o"></span>My Info</a></li>
		            <li><a href="contact_list.php"><span class="fa fa-envelope-o"></span>Settings</a></li>
		        </ul>
		    </div>
	
		<!--     SIDE AREA -->
		<div id="mainArea">
			<h3 class="display-4" >Member Info</h3>
	        <table class="table table-striped" id="table">
			  <thead>
			    <tr>
			      <th scope="col">#ID</th>
			      <th scope="col">Name</th>
			      <th scope="col">Birthday</th>
			      <th scope="col">Gender</th>
			      <th scope="col">Address</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">${record.id }</th>
			      <td>${record.name }</td>
			      <td>${record.birthday }</td>
			      <td>${record.gender }</td>
			      <td>${record.address }</td>
			    </tr>
			  </tbody>
			</table>
		</div>
        <!-- 컨테이너는 여기까지 -->
		    </div>
		    </body></html>

