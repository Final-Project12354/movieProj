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
<script src="<c:url value="/resources/js/${PPPData.cate}/${PPPData.service}.js" />" ></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href='<c:url value="/resources/css/index.css" />'>
<link rel="stylesheet" href='<c:url value="/resources/css/${PPPData.cate}/${PPPData.service}.css" />'>


<c:if test="${subMenu.url !=null }">
	<link rel="stylesheet" href='<c:url value="/resources/css/${PPPData.cate}/${subMenu.url}.css" />'>
</c:if>
<!-- 메인페이지일때문 index.js불러오기(배너 움직이는거) -->
<c:if test="${PPPData.cate eq 'mainpage'}">
	<script src="<c:url value="/resources/js/index.js" />" ></script>
</c:if>
<c:if test="${subMenu.url !=null && subMenu.url != 'myinfor' }">
	<script src="<c:url value="/resources/js/${PPPData.cate}/${subMenu.url}.js" />" ></script>
</c:if>

<title>MUZIK</title>
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
				<li><a href="/user/movie/moviedetail?sub=info&ind=${aaa.m_index}"><img src="../../banner/${aaa.imgurl}" alt="sss"></a></li>
				
			</c:forEach><!--  -->
	
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