<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:include page="/template/Top.jsp" />
<div class="container" style="margin-top: 50px">
	<div class="jumbotron bg-dark text-white">
		<h1>
			Spring Framework <small>한줄 댓글-상세보기 페이지</small>
		</h1>
	</div>
	<c:if test="${! empty FAILURE}">
		<div class="alert alert-success alert-dismissible fade show">
			<button type="button" class="close" data-dismiss="alert">×</button>
			<strong>Failure!</strong> ${FAILURE }
		</div>
	</c:if>
	
	<table class="table table-bordered">
		<tbody class="table-sm">
			<tr>
				<th class="w-25 bg-dark text-white text-center">번호</th>
				<td>${record.no}</td>
			</tr>
			<tr>
				<th class="w-25 bg-dark text-white text-center">글쓴이</th>
				<td>${record.id}</td>
			</tr>
			<tr>
				<th class="w-25 bg-dark text-white text-center">작성일</th>
				<td>${record.postdate}</td>
			</tr>
			<tr>
				<th class="w-25 bg-dark text-white text-center">제목</th>
				<td>${record.title}</td>
			</tr>
			<tr>
				<th class="bg-dark text-white text-center" colspan="2">내 용</th>
			</tr>
			<tr>
				<td colspan="2">${record.content}</td>
			</tr>
		</tbody>
	</table>
	<!-- 수정/삭제/목록 컨트롤 버튼 -->
	<div class="text-center" style="margin-bottom:50px">

		<c:if test="${sessionScope.id ==record.id }" var="isWriter">
			<a href="<c:url value="/approach/Edit.do?no=${record.no}"/>"	class="btn btn-success">수정</a> 
			<a href="javascript:isDelete()" class="btn btn-success">삭제</a>
		</c:if>


		<a href="<c:url value="/approach/List.do"/>"
			class="btn btn-success">목록</a>
	</div>

</div>
<!--container-->
<jsp:include page="/template/Footer.jsp" />
<script>
//[ajax로 서버에 데이터를 요청하는 함수들]
/*
※제이쿼리 AJAX에서의 요청방식
 -GET, POST요청 :
	 data:key1=value1&key2=value2&...
	 혹은 data:{key1:value1,key2:value2,...}
	 contentType:"application/x-www-form-urlencoded"(디폴트)			 
	 스프링에서는 @RequestParam으로 데이타를 받는다
 -POST,PUT, DELETE요청
	data:JSON.stringify({key1:value1,key2:value2,...})
    contentType:"application/json"
    스프링에서는 @RequestBody 로 데이터를 받는다.
*/
	//[등록 혹은 수정버튼 클릭 이벤트 처리]
	$('#submit').click(function(){
		console.log($(this).val());
		console.log($('#form').serialize());
		let url;
		if($(this).val()=='등록')
			url="<c:url value="/onememo/comments/Write.do"/>";
		else
			url="<c:url value="/onememo/comments/Edit.do"/>";
		//ajax로 요청	
		$.ajax({
			url:url,
			data:$('#form').serialize(),
			dataType:'json',
			type:'post'
		})
		.done(function(data){
			console.log('서버로부터 받은 데이타:',data); 
			if($('#submit').val()==='등록'){//코멘트 등록처리
				let tr="<tr><td>" + data.name+"</td><td class='text-left line-comment' title='"+data.lno+"'>"+data.lineComment+"</td><td>"+data.lpostDate+"</td><td><span class='btn btn-info btn-sm my-delete'>삭제</span></td></tr>";
				$('#comments-list').prepend(tr);
				//댓글 등록시에 "댓글이 없습니다" 요소가 있는 경우는 "댓글이 없습니다" 요소 삭제
				if($('#empty-comment').length !=0){
					$('#empty-comment').remove();
				}
			}
			else{//코멘트 수정처리
				$('#submit').val('등록');
				//입력한 값으로 클릭한 제목 변경
				$('td[title="'+data.lno+'"]').html(data.lineComment);
				//수정한 제목 색상 변경-눈에 띄라고
				$('td[title="'+data.lno+'"]').css('color','red');
				
				
			}
			//입력값 클리어 및  포커스 주기
			$('#linecomment').val('');
			$('#linecomment').focus();
			
		})
		.fail(function(e){
			console.log('에러:',e);
		});
		
	});
	
	//[댓글의 제목 클릭시-수정처리 하기 위함]
	//※click이벤트 걸때 반드시  $(document).on('이벤트명','셀렉터',콜백함수)으로
	//그래야 동적으로 추가된 요소에도 이벤트가 발생한다
	$(document).on('click','.line-comment',function(){
		console.log('댓글 번호:',$(this).attr('title'));
		var this_ = $(this);//클릭한 제이 쿼리 객체
		$.ajax({
			url:"<c:url value="/onememo/comments/GetId.do"/>",
			data:"lno="+this_.attr('title')
		})
		.done(function(data){
			console.log('댓글의 작성자 아이디:',data);
			if('${sessionScope.id}'===data){//본인 댓글만 수정토록 UI변경
				//입력상자값을 클릭한 제목으로 변경
				$('#linecomment').val(this_.html());
				//버튼의 텍스트를 수정으로 변경
				$('#submit').val('수정');
				//폼의 hidden인 lno의 value를 클릭한 제목의 lno값으로 설정
				$('input[name=lno]').val(this_.attr('title'));
				console.log('히든값 설정확인(lno):',$('input[name=lno]').val());
			}
		})
		.fail(function(e){
			console.log('아이디 찾기 오류:',e);
		});
	});
	//[댓글 삭제 처리]
	$(document).on('click','.my-delete',function(){
		if(confirm('정말로 삭제 하시겠습니까?')){
			console.log('댓글의 키(lno):',$(this).parent().prev().prev().attr('title'));
			let lno=$(this).parent().prev().prev().attr('title');
			var this_ = $(this);
			//삭제처리 요청
			$.ajax({
				url:"<c:url value="/onememo/comments/Delete.do"/>",
				type:'delete',
				data:JSON.stringify({'lno':lno}),
				dataType:'json',
				contentType:"application/json"
			}).done(function(data){
				console.log('삭제 성공:',data);
				//클릭한 tr삭제
				this_.parent().parent().remove();
			});
			
		}
		
	});
	
	//[메모글 삭제]
	function isDelete(){
		if(confirm("삭제 할래요?")){
			location.replace("<c:url value="/attempt/Delete.do?no=${record.no}"/>");
		}
	}
	

</script>

