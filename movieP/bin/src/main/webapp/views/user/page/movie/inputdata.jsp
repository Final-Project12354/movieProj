<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.model.MovieInfoDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.model.DbMapper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 <c:forEach items="${moviedatabefore }" var="mm" varStatus="no">
   <table border="">
      <tr><td>${no.index +1}</td></tr>
      <tr>
      	<td id="pos">
      	<a href="moviedetail.jsp">
      	<img alt ="${mm.mplot }" src='<c:url value= "/views/user/img/movie/${mm.movieimg }"/>'/>
      	</a>
      	</td>
      </tr>
      <tr><td>${mm.movietitle }</td></tr>
      <tr>
         <td>평점: ${mm.star }
         <input class = "tBtn" type="button" value="예매하기"></td>
      </tr>
   </table>
 </c:forEach>
