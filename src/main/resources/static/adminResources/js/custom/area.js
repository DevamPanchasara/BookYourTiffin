function validateAreaDetais() {

	if ($('#selectCity').val().trim() === 'null') {
		$('#selectCity').focus()
		showErrorToast('Please select city ')
		return false;
	}
	else if ($('#areaName').val().trim() === '' ) {
		$('#areaName').focus()
		showErrorToast('Please enter area name')
		return false;
	} 
	else if ( $('#areaName').val().length <= 4 ) {
		$('#areaName').focus()
		showErrorToast('Please valid area name')
		return false;
	} 
	else if ($('#areaDescription').val().trim() === '' ) {
		$('#areaDescription').focus()
		showErrorToast('Please enter area description')		
		return false;
	}
	else {
		return true;
	}
}