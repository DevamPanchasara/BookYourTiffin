function ValidateVendor() {
	var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
	

	if ($('#fullName').val().trim() === '') {
		$('#fullNameErrDivId').html('please enter your full name');
		return false;
	} else if (!$('#username').val().trim()) {
		$('#fullNameErrDivId').html('');
		$('#userErrDivId').html('please enter username ');
		return false;
	} else if (!$('#username').val().match(mailformat)) {
		$('#userErrDivId').html('please enter valid email ');
		return false;
	} else if ($('#contactno').val().trim() === '') {
		$('#userErrDivId').html('');
		$('#contactNumberErrDivId').html('please enter contact number');
		return false;
	} else if ($('#contactno').val().length != 10) {
		$('#userErrDivId').html('');
		$('#contactNumberErrDivId').html('please enter valid contact number');
		return false;
	}  else if ($('#billing-address-select').val().trim() === '') {
		$('#contactNumberErrDivId').html('');
		$('#cityIdDivId').html('please select city');
		return false;
	} else if ($('#address').val().trim() === '') {
		$('#cityIdDivId').html('');
		$('#addressErrDivId').html('please enter your address');
		return false;
	} else if ($('#file').val().trim() === '') {
		$('#addressErrDivId').html('');
		$('#fileErrDivId').html('Please upload your valid address proof');
		return false;
	} else {
		return true;
	}

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