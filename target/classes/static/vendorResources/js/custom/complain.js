function validateTableDetais() {

	if ($('#complainSubject').val().trim() === '') {
		$('#complainSubject').focus()
		showErrorToast('Please enter complain')
		return false;
	} else if ($('#complainDescription').val().trim() === '') {
		$('#complainDescription').focus()
		showErrorToast('Please enter description')		
		return false;
	} else if ($('#file').val().trim() === '') {
		$('#file').focus()
		showErrorToast('Please upload document')		
		return false;
	}
	else {
		return true;
	}
}