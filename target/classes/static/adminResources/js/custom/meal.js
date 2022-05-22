function validateTableDetais() {

	if ($('#mealType').val().trim() === '') {
		$('#mealType').focus()
		showErrorToast('Please enter meal type')
		return false;
	} else if ($('#mealDescription').val().trim() === '') {
		$('#mealDescription').focus()
		showErrorToast('Please enter meal description')		
		return false;
	}
	else {
		return true;
	}
}