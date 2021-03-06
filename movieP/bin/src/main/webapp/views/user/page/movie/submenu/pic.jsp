<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
	.container{
		width: 500px;	
		height:400px;
	}
	.item{
		width: 500px;
		height:100%;
		vertical-align: center;	
		object-fit: cover;
	}
	.item active{
		width: 500px;
		height:100%;
		vertical-align: center;	
		object-fit: cover;
	}
</style>
<script>
<% int cnt =0;%>
</script>
<c:forEach items="${movieimage }" var="i" varStatus="no">
	<%cnt = cnt+1; %>
</c:forEach>


${movieimage }


<div id="p">${moviedetail.movietitle } 영화에 대한 <%=cnt %>개의 스틸컷이 있어요!</div>

<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>


    <!-- Wrapper for slides -->
 <div class="carousel-inner">
  <c:forEach items="${movieimage }" var="i" varStatus="no">
      <c:if test="${no.index == 0 }">
	      <div class="item active">
	       <img src="/moviedata/${moviedetail.movietitle }/${i.imgname}" alt="${i.imgname }">
      </div>
      </c:if>
      <c:if test="${no.index != 0 }">
      <div class="item">
        <img src="/moviedata/${moviedetail.movietitle }/${i.imgname}" alt="${i.imgname }">
      </div>
      </c:if>
  	</c:forEach>
    </div>


    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
