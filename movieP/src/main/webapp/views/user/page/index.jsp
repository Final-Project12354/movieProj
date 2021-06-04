<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="<c:url value="/resources/my_js/jquery-3.6.0.js"/>"></script>
<script src="<c:url value="/resources/my_js/jquery-ui.min.js"/>"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<link rel="stylesheet" href='<c:url value="/resources/css/index.css" />'>
<link rel="stylesheet" href='<c:url value="/resources/css/${PPPData.cate}/${PPPData.service}.css" />'>
<c:if test="${subMenu.url !=null }">
	<link rel="stylesheet" href='<c:url value="/resources/css/${PPPData.cate}/${subMenu.url}.css" />'>
</c:if>
<script src="<c:url value="/resources/js/index.js" />" ></script>
<script src="<c:url value="/resources/js/${PPPData.cate}/${PPPData.service}.js" />" ></script>
<c:if test="${subMenu.url !=null && subMenu.url != 'mycinema' && subMenu.url != 'myinfor' }">
	<script src="<c:url value="/resources/js/${PPPData.cate}/${subMenu.url}.js" />" ></script>
</c:if>


<title>유저 메인 화면</title>
</head>




<body>
<div class="index_mainheader">
	<jsp:include page="inc/header.jsp" />
</div>




<c:if test="${PPPData.cate eq 'mainpage'}">
<div id="main_cover">
<div class="banner_bg">
	<img src="/banner/poster_bg.jpg" alt="">
</div>

<div class="maincont_banner">
	<ul class="slides ulss" style="width: 420px; transform: translateX(-5180px);">
	
			<c:forEach items="${bannerimgs}" var="aaa" varStatus="no" >
				<li><img src="../../banner/${aaa.imgurl}" alt="sss"></li>
				
			</c:forEach>
	
	</ul>
	<span class="prev"><img src="/banner/p_left.png" alt="" /></span>
	<span class="next"><img src="/banner/p_right.png" alt="" /></span>
</div>
</div>
</c:if>


<div class="index_maincont">
	<jsp:include page="${PPPData.cate}/${PPPData.service}.jsp" />
</div>

<div class="index_mainfooter">
	<jsp:include page="inc/footer.jsp" />
</div>
<h3>${sessionScope.sessionId }</h3>
</body>
</html>