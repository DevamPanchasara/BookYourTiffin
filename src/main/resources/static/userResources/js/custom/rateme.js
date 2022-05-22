function validateRatemeDetais() {

	if ($('#feedbackSubject').val().trim() === '') {
		$('#feedbackSubject').focus()
		showErrorToast('Please enter feedback subject ')
		return false;
	} 
	else {
		return true;
	}
}