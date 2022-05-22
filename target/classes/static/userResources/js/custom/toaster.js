function showErrorToast(message) {
	$.toast({
		heading : 'Warning',
		text : message,
		showHideTransition : 'slide',
		icon : 'error',
		loaderBg : '#f2a654',
		position : 'top-right',
	})
}
function showSuccessToast(message) {
	$.toast({
		heading : 'Success',
		text : message,
		showHideTransition : 'slide',
		icon : 'info',
		loaderBg : '#f2a654',
		position : 'top-center',
	})
}