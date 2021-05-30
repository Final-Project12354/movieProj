<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class ="firstwritouter">
	<input type="hidden" id="userid" value="${sessionId }"/>
	
	<c:forEach items="${memdata.comment }" var ="pp" varStatus="no">
		
		<div class="writeouter">
			<a href="/user/movie/moviedetail?sub=review&ind=${pp.cate }">
				<div class="writeimg">
					<c:choose>
						<c:when test="${pp.imgname!=null }">
							<img src="/moviedata/${pp.imgname }" alt="${pp.movietitle } 이미지" />
						</c:when>
						<c:otherwise>
							이미지 없음
						</c:otherwise>
					</c:choose>
				</div>
			</a>
			<a href="/user/movie/moviedetail?sub=review&ind=${pp.cate }"><div class="writetitle">${pp.movietitle } | 좋아요: ${pp.mlike }</div></a>
			
			<div class="writetnow">${pp.postcontent }</div>
			<textarea class="writeArea" rows="1" cols="40">${pp.postcontent }</textarea>
			
			<div class="writetitleouter">
				<div class="writetitle2">작성일 : ${pp.posttime }</div>
				
				<span class= "writeButtouter">
					<button class="changeButt" onclick="writemodifyGo(${pp.cate },${no.index })" >수정</button>
					<button class="changeButt" onclick="writedelteGo(${pp.cate },${no.index })">삭제</button>
				</span>
			</div>
		</div>
	</c:forEach>
	
	<c:if test="${memdata.pdto.startPage > 1}">
    	<input type="button" class="btn" dd="${memdata.pdto.startPage-1}" value="&lt" />
	</c:if>
            
	<c:forEach begin="${memdata.pdto.startPage}" end="${memdata.pdto.endPage}" step="1" var="i">
		<c:choose>
			<c:when test="${i == memdata.pdto.page}">
				[${i}]                  
			</c:when>
			<c:otherwise>
				<input type="button" class="btn" dd="${i}" value="${i}" />
			</c:otherwise>
		</c:choose>
	</c:forEach>
            
	<c:if test="${memdata.pdto.endPage < memdata.pdto.total}">
    	<input type="button" class="btn" dd="${memdata.pdto.endPage+1}" value="&gt" />
	</c:if>
</div>
