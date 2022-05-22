function validateTiffinMenu() {

	if ($('#tiffinType').val().trim() === 'null') {
		$('#tiffinType').focus()
		showErrorToast('Please select Type')
		return false;
	}
	else if ($('#timefrom').val().trim() === '') {
		$('#timefrom').focus()
		showErrorToast('Please enter time from')
		return false;
	}
	else if ($('#timeto').val().trim() === '') {
		$('#timeto').focus()
		showErrorToast('Please enter time to')
		return false;
	}
	else if ($('#selectDay').val().trim() === 'null') {
		$('#selectDay').focus()
		showErrorToast('Please select day')
		return false;
	}
	else if ($('#price').val().trim() === '') {
		$('#price').focus()
		showErrorToast('Please enter price')
		return false;
	}
	else if ($('#price').val().trim() === '') {
		$('#price').focus()
		showErrorToast('Please enter price')
		return false;
	}
	else {
		return true;
	}
}