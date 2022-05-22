function validatePackageDetais() {

	if ($('#packageName').val().trim() === '') {
		$('#packageName').focus()
		showErrorToast('Please enter package name')
		return false;
	} else if ($('#packageDescription').val().trim() === '') {
		$('#packageDescription').focus()
		showErrorToast('Please enter package description')
		return false;
	} else if ($('#packageRangeFrom').val().trim() === '') {
		$('#packageRangeFrom').focus()
		showErrorToast('Please enter package range from')
		return false;
	} else if ($('#packageRangeTo').val().trim() === '') {
		$('#packageRangeTo').focus()
		showErrorToast('Please enter package range to')
		return false;
	} else if ($('#percentage').val().trim() === '') {
		$('#percentage').focus()
		showErrorToast('Please enter percentage')
		return false;
	} else if ($('#packageDuration').val().trim() === '') {
		$('#packageDuration').focus()
		showErrorToast('Please enter package duration')
		return false;
	} else {
		return true;
	}
}