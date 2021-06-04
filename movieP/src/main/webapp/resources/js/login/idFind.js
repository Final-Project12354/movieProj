/**
 * 
 */
 $(function() {
	
	$("#username").on("propertychange change keyup paste input", function(){
	
		if($('#username').val()!='' && $('#userbirth').val()!='' && $('#userpnum').val()!='' )
				$('#check').attr('disabled',false)
		else
			$('#check').attr('disabled',true)
	});
	
	$("#userbirth").on("propertychange change keyup paste input", function(){
	
		if($('#username').val()!='' && $('#userpnum').val()!='' && $('#userbirth').val()!='' )
				$('#check').attr('disabled',false)
		else
			$('#check').attr('disabled',true)

	});
	
	$("#userpnum").on("propertychange change keyup paste input", function(){
	
		if($('#userbirth').val()!='' && $('#username').val()!='' && $('#userpnum').val()!='')
				$('#check').attr('disabled',false)
		else
			$('#check').attr('disabled',true)		
	
	});
	
	
	$('#check').click(function(){
		
		$.ajax({
	    	async : true,
	        type : 'POST',
	        data : JSON.stringify({username : $('#username').val(), userbirth : $('#userbirth').val(), userpnum : $('#userpnum').val()}),
	        url : "/memberCheck",
	        dataType : "json",
			contentType : "application/json; charset=UTF-8",
			success : function(data) {
				
				if(data.dto!=null){
					
					alert(data.dto.userid)
					frm.action = "/user/main"
					frm.submit();
			
				}else{ 
					alert("해당 정보의 아이디가 존재하지않습니다.")
	     		}
	     	}
		});
	});
});
	