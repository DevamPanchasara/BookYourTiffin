function validateReplyComplainDetais() {

	if ($('#complainReplay').val().trim() === '') {
		$('#complainReplay').focus()
		showErrorToast('Please enter complain reply')		
		return false;
	}
	else 
	{
		return true;
	}
}