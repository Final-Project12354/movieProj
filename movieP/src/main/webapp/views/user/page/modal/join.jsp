<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="/resources/js/modal/join.js" ></script>
<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	<h2>휴대폰 인증</h2>
</div>

<div class="modal-body">
	<input type="text" placeholder="인증번호를 입력해주세요" maxlength="16" id="joinPnum">
	<button type="button" id="joinPnumChk" class="btn btn-secondary">확인</button>
	<div>
	<button class="close" id="close" data-dismiss="modal">닫기</button>
	</div>
</div>