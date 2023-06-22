<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/template/Top.jsp" %>

    <div class="container" style="margin-top:50px; margin-bottom:50px">
    <div class="jumbotron" style="background-color:black; color:white;">
		    <h1>회원가입</h1>            
		</div><!--jumbotron-->
    <c:if test="${not empty param.register }">
    	<script>
    		alert('${param.register}');
    	</script>
    </c:if>
    <fieldset>
        <form action="<c:url value="/attempt/Register.do"/>"
			method="post">
			<div class="form-group">
				<label><kbd class="lead">아이디</kbd></label> <input type="text"
					value="${ empty param.id ?"": param.id}" class="form-control" name="id"
					placeholder="아이디를 입력하세요">
			</div>
			<span id="idcheck"></span>
			<div class="form-group">
				<label><kbd class="lead">비밀번호</kbd></label> <input type="password"
					value="${ empty param.pwd ?"": param.pwd}" class="form-control" name="pwd"
					placeholder="비밀번호를 입력하세요">
			</div>
      		<div class="form-group">
				<label><kbd class="lead">비밀번호 재입력</kbd></label> <input type="password"
					value="${ empty param.pwd ?"": param.pwd}" class="form-control" name="pwd2"
					placeholder="비밀번호를 확인하세요">
			</div>
			<div class="form-group">
				<label><kbd class="lead">이름</kbd></label> <input type="text"
					value="${ empty param.name ?"": param.name}" class="form-control" name="name"
					placeholder="이름를 입력하세요">
			</div>
			<div class="form-group">
				<label><kbd class="lead">주민등록번호</kbd></label> <input type="text"
					value="${ empty param.registrynum ?"": param.registrynum}" class="form-control" name="registrynum"
					placeholder="주민등록번호 7자리를 입력하세요">
			</div>
			<div class="form-group">
				<label><kbd class="lead">주소</kbd></label> <input type="text"
					value="${ empty param.address ?"": param.address}" class="form-control" name="address"
					placeholder="주소를 구까지 입력하세요">
			</div>
			<div class="form-group">
				 <input type="hidden"
					value="ANY" class="form-control" name="inter"
					placeholder="">
			</div>
			<button type="submit" class="btn btn-primary" style="background-color:black;">확인</button>
		</form> 
		
		<form action="<c:url value="/attempt/Register.do"/>"
			method="post">
			<div class="form-group">
				<label><kbd class="lead">아이디</kbd></label> <input type="text"
					value="${ empty param.id ?"": param.id}" class="form-control" name="id"
					placeholder="아이디를 입력하세요">
			</div>
			<span id="idcheck"></span>
			<div class="form-group">
				<label><kbd class="lead">비밀번호</kbd></label> <input type="password"
					value="${ empty param.pwd ?"": param.pwd}" class="form-control" name="pwd"
					placeholder="비밀번호를 입력하세요">
			</div>
      		<div class="form-group">
				<label><kbd class="lead">비밀번호 재입력</kbd></label> <input type="password"
					value="${ empty param.pwd ?"": param.pwd}" class="form-control" name="pwd2"
					placeholder="비밀번호를 확인하세요">
			</div>
			<div class="form-group">
				<label><kbd class="lead">이름</kbd></label> <input type="text"
					value="${ empty param.name ?"": param.name}" class="form-control" name="name"
					placeholder="이름를 입력하세요">
			</div>
			<div class="form-group">
				<label><kbd class="lead">주민등록번호</kbd></label> <input type="text"
					value="${ empty param.registrynum ?"": param.registrynum}" class="form-control" name="registrynum"
					placeholder="주민등록번호 7자리를 입력하세요">
			</div>
			<div class="form-group">
				<label><kbd class="lead">주소</kbd></label> <input type="text"
					value="${ empty param.address ?"": param.address}" class="form-control" name="address"
					placeholder="주소를 구까지 입력하세요">
			</div>
			<div class="form-group">
				 <input type="hidden"
					value="ANY" class="form-control" name="inter"
					placeholder="">
			</div>
			<button type="submit" class="btn btn-primary" style="background-color:black;">확인</button>
		</form> 
		</fieldset>
    </div><!--container-->
    <script> 
      var btn = document.querySelector('button[type=submit]');
    	var id = document.querySelector('input[name=id]');
		  var pwd = document.querySelector('input[name=pwd]');
      var pwd2 = document.querySelector('input[name=pwd2]');
      var name = document.querySelector('input[name=name]');
      var registrynum = document.querySelector('input[name=registrynum]');
      var address = document.querySelector('input[name=address]');
      
      $(function(){
        $('input[name=id]').keyup(function(){
          var id = $(this).val();
          $.ajax({
            url: '<c:url value="/attempt/CheckId.do"/>',
            type: 'post',
            data: {'id': id}
          }).done(function(data){
        	  console.log(data);
        	  if(data === '1'){
                  $('#idcheck').text('이미 사용중인 아이디입니다');
                  $('#idcheck').css('color', 'red');
                }else{
                  $('#idcheck').text('사용 가능한 아이디입니다');
                  $('#idcheck').css('color', 'blue');
                }
          });                 
        })
  });
 
      
      btn.onclick = () => {
        if(id.value == ""){
          alert("아이디를 입력하세요");
          id.focus();
          return false;
        }
        if(id.value.length < 3){
          alert("아이디는 3자리 이상이어야 합니다");
          id.focus();
          return false;
        }
        if(id.value.length > 15){
          alert("아이디는 15자리 이하이어야 합니다");
          id.focus();
          return false;
        }
        if(pwd.value == ""){
          alert("비밀번호를 입력하세요");
          pwd.focus();
          return false;
        }
        if(pwd.value.length < 4){
          alert("비밀번호는 4자리 이상이어야 합니다");
          pwd.focus();
          return false;
        }
        if(pwd.value.length > 20){
          alert("비밀번호는 20자리 이하이어야 합니다");
          pwd.focus();
          return false;
        }
        if(pwd2.value == ""){
          alert("비밀번호를 확인하세요");
          pwd2.focus();
          return false;
        }
        if(pwd.value != pwd2.value){
          alert("비밀번호가 일치하지 않습니다");
          pwd2.focus();
          return false;
        }
        if(name.value == ""){
          alert("이름을 입력하세요");
          name.focus();
          return false;
        }
        if(registrynum.value == ""){
          alert("주민등록번호를 입력하세요");
          registrynum.focus();
          return false;
        }
        if(registrynum.value.length != 7){
          alert("주민등록번호는 7자리여야 합니다");
          registrynum.focus();
          return false;
        }
        //make a regex pattern that only receives 7 numbers
        var pattern = /^[0-9]{7}$/;
        if(!pattern.test(registrynum.value)){
          alert("주민등록번호는 숫자만 입력해야 합니다");
          registrynum.focus();
          return false;
        }
        if(address.value == ""){
          alert("주소를 입력하세요");
          address.focus();
          return false;
        }
        //make a regex pattern that must include '시' and '구' in address
        var pattern = /(?=.*시)(?=.*구)/;
        if(!pattern.test(address.value)){
          alert("주소는 '시'와 '구'를 포함해야 합니다");
          address.focus();
          return false;
        }
      }
    </script>
<%@ include file="/template/Footer.jsp" %>