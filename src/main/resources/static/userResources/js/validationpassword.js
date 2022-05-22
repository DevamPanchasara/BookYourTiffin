function matchPassword() {

	var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
	
	if ($('#fullName').val().trim() === '') {
		$('#fullName').focus()
		$('#userErrDivId').html('please enter fullname ');
		return false;
	} else if ($('#billing-address-select').val().trim() === 'null') {
		$('#billing-address-select').focus()
		$('#genderErrDivId').html('Please select Gender')
		return false;
	} else if ($('#username').val().trim() === '') {
		$('#username').focus()
		$('#emailErrDivId').html('Please Enter Mail Id')
		return false;
	} else if (!$('#username').val().match(mailformat)) {
		$('#username').focus()
		$('#emailErrDivId').html('Please Enter valid email address')
		return false;
	}
	else if ($('#psw1').val().trim() === '') {
		$('#psw1').focus()
		$('#pswErrDivId').html('Please Enter Password')
		return false;
	} else if ($('#psw2').val().trim() === '') {
		$('#psw2').focus()
		$('#pswErrDivId1').html('Please Enter Confirm Password')
		return false;
	} else if ($('#psw1').val().trim() !== $('#psw2').val().trim()) {
		$('#pswErrDivId1').html('Password and Confirm Password Must Be Same')
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