function validateEditProfile() {
	
	var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

	if ($('#fullName').val().trim() === '') {
		$('#fullName').focus()
		showErrorToast('Please enter full name')
		return false;
	}else if ($('#fullName').val().length <= 3) {
		$('#fullName').focus()
		showErrorToast('Please valid full name')
		return false;
	}else if ($('#contactno').val().length != 10 ) {
		$('#contactno').focus()
		showErrorToast('Please valid contact no')
		return false;
	}  else if ($('#username').val().trim() === '') {
		$('#username').focus()
		showErrorToast('Please enter username')		
		return false;
	} else if (!$('#username').val().match(mailformat)) {
		showErrorToast('Please enter valid username')	
		return false;
	}else if (!$('#address').val().trim() === '') {
		showErrorToast('Please enter address')	
		return false;
	} else {
		return true;
	}
}

$(document).ready(function() {
	$("#fullName").bind("keypress", function(e) {
		var keyCode = e.which ? e.which : e.keyCode

		if (!(keyCode >= 65 && keyCode <= 90 || keyCode >= 97 && keyCode <= 122)) {
			$(".error").css("display", "inline");
			return false;
		} else {
			$(".error").css("display", "none");
		}
	});
});


$(document).ready(function() {
	$('#contactno').bind("cut copy paste", function(e) {
		e.preventDefault();
	});
});

$(document).ready(function() {
	$("#contactno").bind("keypress", function(e) {
		var keyCode = e.which ? e.which : e.keyCode

		if (!(keyCode >= 48 && keyCode <= 57)) {
			$(".error").css("display", "inline");
			return false;
		} else {
			$(".error").css("display", "none");
		}
	});
});