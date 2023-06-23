<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/template/Top.jsp" />
<div class="container" style="margin-top: 50px">
	<div class="jumbotron bg-dark text-white">
		<h1>
			MR/MRS. ${sessionScope.id} <small>is <c:if test="${mode eq 'edit' }" var="isEdit">editing</c:if> <c:if test="${not isEdit }"> writing </c:if> now..</small>
		</h1>
	</div>
	<!--jumbotron-->
	<c:if test="${! empty InputError}">
		<div class="alert alert-success alert-dismissible fade show">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<strong>Failure!</strong> ${InputError}
		</div>
	</c:if>
	<c:if test="${mode eq 'edit' }" var="isEdit">
	<form method="post" action="<c:url value="/attempt/Edit.do"/>" style="margin-bottom:50px">
		<input type="hidden" name="no" value="${record.no }"/>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<div class="form-group">
			<label><kbd class="lead">제목</kbd></label> <input type="text"
				value="${param.title}${record.title}" class="form-control" placeholder="제목을 입력하세요"
				name="title">
		</div>
		<div class="form-group">
			<label><kbd class="lead">내용</kbd></label>
			<textarea class="form-control" rows="5" name="content">${param.content}${record.content }</textarea>
		</div>
		<button type="submit" class="btn btn-dark">등록</button>
	</form>
	</c:if>
	<c:if test="${not isEdit }">
	<form method="post" action="<c:url value="/attempt/Write.do"/>" style="margin-bottom:50px">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<div class="form-group">
			<label><kbd class="lead">제목</kbd></label> <input type="text"
				value="${param.title}${record.title}" class="form-control" placeholder="제목을 입력하세요"
				name="title">
		</div>
		<div class="form-group">
			<label><kbd class="lead">내용</kbd></label>
			<textarea class="form-control" rows="5" name="content">${param.content}${record.content }</textarea>
		</div>
		<button type="submit" class="btn btn-dark">등록</button>
	</form>
	</c:if>
</div>
<!--container-->
<jsp:include page="/template/Footer.jsp" />