function validateOrderDetais() {
	if ($('#firstname').val().trim() === '') {
		$('#firstname').focus()
		showErrorToast('Please enter your first name')
		return false;
	} else if ($('#lastname').val().trim() === '') {
		$('#lastname').focus()
		showErrorToast('Please enter your last name')
		return false;
	} else if ($('#contactno').val().trim() === '') {
		$('#userErrDivId').focus()
		showErrorToast('Please enter your Contact number')
		return false;
	} else if ($('#contactno').val().length != 10) {
		$('#userErrDivId').html('');
		showErrorToast('please enter valid contact number');
		return false;
	}else if ($('#email').val().trim() === '') {
		$('#email').focus()
		showErrorToast('Please enter your Email')
		return false;
	}else if ($('#address').val().trim() === '') {
		$('#address').focus()
		showErrorToast('Please enter your Address')
		return false;
	}else {
		saveOrderDetails();
	}
}

function saveOrderDetails(){
	
}

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