/**
 * 
 */
 $(function() {	
	 $("#checkBtn").click(function(){
		
		if(confirm("정말 탈퇴 하시겠습니까?")) {
			
			var list = {
				userpw : document.getElementById('chkPw').value,
				userid : document.getElementById('userid').value,
				kind : '일반'
			};
			
			$.ajax({
		    	async : false,
		        type : 'POST',
		        data : JSON.stringify(list),
		        url : "/membermodify",
		        dataType : "json",
				contentType : "application/json; charset=UTF-8",
				success : function(data) {
					if(data.cnt >0){
						alert("탈퇴처리되었습니다")
						frm.action = "/logout"
						frm.submit();
					}else{
						alert("비밀번호가 일치하지않습니다.")
						 $("#chkPw").val('')
					}
		     	}
			});
		}
	});
	
	$('.close').click(function() {
		 $("#chkPw").val('')
	});	
	
 }); 