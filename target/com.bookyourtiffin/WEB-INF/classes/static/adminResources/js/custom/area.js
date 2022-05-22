function validateAreaDetais() {

	if ($('#areaName').val().trim() === '') {
		$('#areaName').focus()
		showErrorToast('Please enter area name')
		return false;
	} else if ($('#areaDescription').val().trim() === '') {
		$('#areaDescription').focus()
		showErrorToast('Please enter area description')		
		return false;
	}else {
		return true;
	}
}