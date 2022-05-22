function validateTableDetais() {

	if ($('#cityName').val().trim() === '') {
		$('#cityName').focus()
		showErrorToast('Please enter city name')
		return false;
	} else if ($('#cityDescription').val().trim() === '') {
		$('#cityDescription').focus()
		showErrorToast('Please enter city description')		
		return false;
	}else {
		return true;
	}
}