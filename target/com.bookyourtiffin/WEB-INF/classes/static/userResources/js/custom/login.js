function validateLogin(){
	
	var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
	
	if ($('#username').val().trim() === '') {
		$('#userErrDivId').html('please enter username');
		return false;
	}else if(!$('#username').val().match(mailformat)) {
		$('#userErrDivId').html('please enter valid email ');
		return false;
	}else if($('#password').val().trim() === ''){
		$('#userErrDivId').html('');
		$('#passwordErrDivId').html('please enter password');
		return false;
	}else{
		return true;
	}
	
}