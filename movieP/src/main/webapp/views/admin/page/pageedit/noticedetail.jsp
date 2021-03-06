<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	* {padding: 0px; margin: 0px; }
	ul, li {text-decoration: none; list-style: none; }
	a {text-decoration: none; }
	
	.clear {clear: both; }
	
	.td1 tr:nth-of-type(1)>td a, 
	.td1 tr:nth-of-type(1)>td button {width: 60px; height: 30px; line-height: 30px; display: inline-block;
									text-align: center; border: none; border-radius: 5px; background: #dbdbdb; color: black; }
	.td1 tr:nth-of-type(1)>td a:hover, 
	.td1 tr:nth-of-type(1)>td button:hover {text-decoration: underline; color: black; }
	
	.detail_top{padding: 5px 0; border-bottom: 1px solid black; background: #f7f8f9;  }
	.detail_top>ul>li {text-align: left; margin: 5px 0; padding: 5px;   }
	.detail_top>ul>li:nth-of-type(1) {font-size: 20px; font-weight: bold; }
	
	.detail_cont {text-align: left; margin: 20px 0; }

	.detail_bot  {text-align: left;  }
	.detail_bot tr td:nth-of-type(1) {width: 150px; background: #f7f8f9; padding: 10px 20px; border-top: 1px solid #d8d9db;  }
	.detail_bot tr td:nth-of-type(2) {width: 700px; border-top: 1px solid #d8d9db; }
	.detail_bot tr:nth-of-type(2) td:nth-of-type(2) {border-bottom: 1px solid #d8d9db; }
	.detail_bot tr:nth-of-type(2) td:nth-of-type(1) {border-bottom: 1px solid #d8d9db; }
	
	.detail_bot>table a {width: 650px; height: 45px; line-height: 45px; display: inline-block; }
	
	.back_list>a {width: 100px; height: 50px; line-height: 50px;  background: orange; display: inline-block; text-align: center; border-radius: 10px;  }
	.back_list {width: 100px; margin: 20px auto; }
</style>

<title>공지뉴스/리스트</title>
</head>

<script>
	$(function() {
		
		$(".deleteGo").click(function() {
			var confirm_val = confirm("정말 삭제하시겠습니까?");
			
			if (confirm_val) {
				var checkArr = new Array();
				checkArr.push($(this).attr("value"));
	
				$.ajax({
					url : "noticedeleteReg",
					type : "post",
					data : {
						checkArr : checkArr
						},
					success : function(res) {
							/* text.indexOf(findString)
							console.log(res) */ 
							console.log(res)
						if (res.indexOf("삭제 성공") != -1) {
							alert(checkArr+"번 삭제성공!");
							location.href = "noticelist";
						} else {
							alert("삭제가 취소되었습니다!");
						}
					}
				});
			}
		});
		
		$(".modifyGo").click(function() {
			var modArr = new Array();
			
			modArr.push($(this).attr("value"));
			
			
			if (modArr.length == 1) {
				confirm(modArr+"번을 수정하시겠습니까?");
				location.href = "noticemodify?page="+${data.npDTO.page }+"&noticeindex="+modArr;
			}
			
			
		})
	})
	
	
	
	
</script>

<body>
<h2>공지/뉴스 게시판 리스트</h2>

<div class="notice_tb">
	<div class="notice_detail">
		<!-- 구분 시스템, 영화관, 기타 -->
		<table class="td1">
			<tr>
				<td colspan="5" style="text-align: right; ">
					<a href="noticeinsert?page=${data.npDTO.page }">글쓰기</a>
					<button type="button" class="modifyGo" value="${data.now.noticeindex }">수정</button>
					<button type="button" class="deleteGo" value="${data.now.noticeindex }">삭제</button>
				</td>
			</tr>
		</table>
		
		
		<div class="detail_top">
			<ul>
				<li>[${data.now.noticecateKr }] ${data.now.noticetitle }</li>				
				<li>등록일 <fmt:formatDate value="${data.now.noticetime }" type="both" pattern="yyy.MM.dd"/></li>
				<li>조회수 ${data.now.noticeview }</li>
			</ul>
		</div>
		<div class="detail_cont">
			<p>
				${data.now.noticecontBr }
			</p>
		</div>
		<div class="detail_bot">
			<table>
				<tr>
					<td>이전글</td>
					<c:if test="${data.next.noticetitle eq null}">
						<td><a href="#">이전글이 없습니다.</a></td>
					</c:if>
					<c:if test="${data.next.noticetitle != null}">
						<td><a href="noticedetail?page=${data.npDTO.page }&noticeindex=${data.next.noticeindex }&kind=title">${data.next.noticetitle }</a></td>
					</c:if>
				</tr>
				<tr>
					<td>다음글</td>
					<c:if test="${data.before.noticetitle eq null}">
						<td><a href="#">다음글이 없습니다.</a></td>
					</c:if>
					<c:if test="${data.before.noticetitle != null}">
						<td><a href="noticedetail?page=${data.npDTO.page }&noticeindex=${data.before.noticeindex }&kind=title">${data.before.noticetitle }</a></td>
					</c:if>
				</tr>
			</table>
			<div class="back_list">
				<a href="noticelist?page=${data.npDTO.page }">목록</a>
			</div>
		</div>
	</div>
</div> 
<div class="clear"></div>

		
</body>
</html>