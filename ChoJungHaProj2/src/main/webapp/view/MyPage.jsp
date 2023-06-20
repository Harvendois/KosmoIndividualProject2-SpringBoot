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
            $("#skills").toggle(500);
            $('.bg-primary').toggle(500);
            $('#table').css('hidden','disabled');
        });
    });
</script>
<body style="width:100%"> 
 
    	<div class="container">
		<!--     SIDE AREA -->
	
		    <div class="sideArea">
		        <div class="avatar">
		            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCNOdyoIXDDBztO_GC8MFLmG_p6lZ2lTDh1ZnxSDawl1TZY_Zw" alt="">
		            <div class="avatarName">Welcome,<br>{record.name}</div>
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
		            <li id="edit"><a href="#" ><span class="fa fa-user-o"></span>My Info</a></li>
		            <li><a href="contact_list.php"><span class="fa fa-envelope-o"></span>Settings</a></li>
		        </ul>
		    </div>
	
		<!--     SIDE AREA -->
		<div class="mainArea">
			<section class="bg-primary" style="width:80%;">
	            <h1>MyPage <small>${ param.id} ${user }님 반갑습니다.</small></h1>            
	        </section><!--jumbotron-->
	        <section id="skills" style="margin-top:50vh; margin-right:15vh">
	           <div id="skills_wrapper" style="width:70%; height:400px; border-top:1px #E6ECF8 solid">
	               <div class="skill_wrapper" id="eng_skills">
	                 <div class="text_wrapper">
	                   <p class="skill_emoji">&#128261;</p>
	                   <p class="skill_title">Engineering Skills</p>
	                   <p class="skill_desc">I am currently learning and researching about ML</p>
	                   <p class="skill_title">Engineering Tools I Use</p>
	                   <ul class="skill_list">
	                       <li>NX10</li>
	                       <li>MATLAB</li>
	                       <li>R (Big Data Management)</li>
	                   </ul>
	                 </div>
	               </div>
	               <div class="skill_wrapper" id="dev_skills">
	                 <div class="text_wrapper">
	                   <p class="skill_emoji">&#128187;</p>
	                   <p class="skill_title">Developer Skills</p>
	                   <p class="skill_desc">I am delving into Machine Learning and Neural Networks.</p>
	                   <p class="skill_title">Languages I Use</p>
	                   <ul class="skill_list">
	                       <li>Java & Spring</li>
	                       <li>JavaScript (ES6, React JS)</li>
	                       <li>Python (Pytorch)</li>
	                       <li>OracleSQL XE</li>
	                       <li>PL/SQL</li>
	                       <li>HTML5&CSS3</li>
	                   </ul>
	               </div>
	               </div>
	               <div class="skill_wrapper" id="gen_skills">
	                 <div class="text_wrapper">
	                   <p class="skill_emoji">&#128204;</p>
	                   <p class="skill_title">General Skills</p>
	                   <p class="skill_desc">Past Experiences become Current Life Skills</p>
	                   <p class="skill_title">Experience I Have</p>
	                   <ul class="skill_list">
	                       <li>Academic Writing</li>
	                       <li>ChatGPT Prompt Engineering</li>
	                       <li>Event Management</li>
	                       <li>Interpreting/Translating</li>
	                       <li>Leadership/Teamwork</li>
	                       <li>Public Speaking</li>
	                       <li>Teaching/Tutoring/Mentoring</li>
	                   </ul>
	                 </div>
	               </div>
	           </div>
	       </section>
	        <table class="table table-striped" id="table" style="margin-top:30vh; width:100%; height:100%; hidden">
			  <thead>
			    <tr>
			      <th scope="col">#</th>
			      <th scope="col">First</th>
			      <th scope="col">Last</th>
			      <th scope="col">Handle</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			      <td>Mark</td>
			      <td>Otto</td>
			      <td>@mdo</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			      <td>Jacob</td>
			      <td>Thornton</td>
			      <td>@fat</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			      <td colspan="2">Larry the Bird</td>
			      <td>@twitter</td>
			    </tr>
			  </tbody>
			</table>
		</div>
        <!-- 컨테이너는 여기까지 -->
		    </div>
		    </body></html>

