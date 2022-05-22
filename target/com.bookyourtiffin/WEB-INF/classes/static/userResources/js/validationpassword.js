function matchPassword() {

	var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
	
	if ($('#fullName').val().trim() === '') {
		$('#fullName').focus()
		showErrorToast('Please Enter Full Name')
		return false;
	} else if ($('#gender').val().trim() === '') {
		$('#gender').focus()
		showErrorToast('Please Enter Gender')
		return false;
	} else if ($('#username').val().trim() === '') {
		$('#username').focus()
		showErrorToast('Please Enter Mail Id')
		return false;
	} else if (!$('#username').val().match(mailformat)) {
		$('#username').focus()
		showErrorToast('Please Enter valid email address')
		return false;
	}
	else if ($('#psw1').val().trim() === '') {
		$('#psw1').focus()
		showErrorToast('Please Enter Password')
		return false;
	} else if ($('#psw2').val().trim() === '') {
		$('#psw2').focus()
		showErrorToast('Please Enter Confirm Password')
		return false;
	} else if ($('#psw1').val().trim() !== $('#psw2').val().trim()) {
		showErrorToast('Password and Confirm Password Must Be Same')
		return false;
	} else {
		return true;
	}
}

function testPassword(){
	var password = $('#psw1').val().trim() ;
	var confirmPassword = $('#psw2').val().trim() ;

	$('#passwordMatchingErrDivId').html();
	
	if(password !== ''){
		var error = (password === confirmPassword) ? '' : '<span style="color:red;">Password and confirm password must be same.</span>';
		$('#passwordMatchingErrDivId').html(error);
	}else{
		$('#passwordMatchingErrDivId').html('');
	}
	
}