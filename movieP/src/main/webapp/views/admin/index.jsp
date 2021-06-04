<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="<c:url value="/resources/my_js/jquery-3.6.0.js"/>"></script>

<jsp:useBean id="currTime" class="java.util.Date" />


<title>  <fmt:formatDate value="${currTime}" pattern="dd일 hh-mm실행" />   관리자 메인 화면</title>
<style>
* {
	padding: 0;
	margin: 0;
}

.adminheader {
	width: 1000px;
	height: 100px;
	border: 2px dashed red;
}
.main {
	text-align: center;	width: 1000px;	height: 100%;	margin: 0 auto;	height: 900px;
}/*  */


.containerr {
	width: 1000px;
	height: 90%;
	margin: 0px;
	padding: 0px;
	display: flex;
	border: 2px dashed #ddd;
}

.aside {
	display: inline-block;
	width: 150px;
	height: 900px;
	border: 5px solid blue;
}

.body {
	display: inline-block;
	width: 1000px;
	height: 100%;
	border: 1px solid red;
}

</style>
</head>
<body>
	<div class="main">
		<div class="adminheader"><jsp:include page="inc/header.jsp" />
		</div>

		<div class="containerr">

			<c:choose>
				<c:when test="${not empty submenu}">
					<div class="aside"><jsp:include page="inc/submenu.jsp" /></div>

				</c:when>

			</c:choose>


			<div class="body" style="
			<c:choose>
				<c:when test="${not empty submenu}">
					width:900px;

				</c:when>

			</c:choose>
			
			
			
			
			"><jsp:include page="page/${bodyurl }.jsp" /></div>

			<!--  page/   pageedit/banner .jsp 를 열어줘.  -->


		</div>

		
</body>
</html>