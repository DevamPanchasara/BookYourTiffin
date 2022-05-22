var record_selected = new Array();
var durationarray = new Array();
var person = 1;

var orderRequest = {};

$(".malebox").click(function() {
	var aa = $(this)
	if (!aa.is('.maleboxselect')) {
		aa.addClass('maleboxselect');
		var my_id = this.id;
		record_selected.push(my_id);
	} else {
		aa.removeClass('maleboxselect');
		var my_id = this.id;
		var index = record_selected.indexOf(my_id);
		if (index > -1) {
			record_selected.splice(index, 1);
		}
	}
	
	orderRequest = {};
	durationarray = new Array();
	generateDurationDiv();
	generateBookinDetails();
});
function generateDurationDiv(){
	
	$('#durationDiv').html('');
	
	var div = '';
	
	for(var index  = 0 ; index < record_selected.length ; index ++ ){
		
		var mealDetails = record_selected[index].split("-");
		var id = mealDetails[1];
		var type = mealDetails[2];
		var className = ''; 
		
		div = div 
		+ '<div class="col-lg-6">'
		+ '<h5 class="durationtitle" style="width: 132px">'+type+'</h5>'
		+ '<div onclick="selectDuration(\''+type.toLowerCase()+'\',\''+type.toLowerCase()+'-1-'+id+'\',\''+index+'\','+id+')" class="durationbox  '+type.toLowerCase()+'" id="'+type.toLowerCase()+'-1-'+id+'">'
		+ '<div class="durationboximgdiv">'
		+ '	<h1>1</h1>'
		+ '	<span>Day</span>'
		+ '</div>'
		+ '</div>'
		+ '<div onclick="selectDuration(\''+type.toLowerCase()+'\',\''+type.toLowerCase()+'-3-'+id+'\',\''+index+'\','+id+')" class="durationbox  '+type.toLowerCase()+'" id="'+type.toLowerCase()+'-3-'+id+'">'
		+ '<div class="durationboximgdiv">'
		+ '	<h1>3</h1>'
		+ '	<span>Days</span>'
		+ '</div>'
		+ '	</div>'
		+ '<div onclick="selectDuration(\''+type.toLowerCase()+'\',\''+type.toLowerCase()+'-7-'+id+'\',\''+index+'\','+id+')" class="durationbox  '+type.toLowerCase()+'" id="'+type.toLowerCase()+'-7-'+id+'">'
		+ '<div class="durationboximgdiv">'
		+ '	<h1>7</h1>'
		+ '	<span>Days</span>'
		+ '</div>'
		+ '	</div>'
		+ '	</div>';
 		
	}
	$('#durationDiv').html(div);
}
function selectDuration(type,id,index,mealId){
	
	var ids = [type+'-1-'+mealId,type+'-3-'+mealId,type+'-7-'+mealId]
	
	ids.map(meals => {
		if(meals === id){
			$("#"+id).addClass("durationboxselect");		
			durationarray[index] = id;
		}else{
			$("#"+meals).removeClass("durationboxselect");		
		}
	})
	generateBookinDetails();
}

function generateBookinDetails(){
	
	$('#bookingDetails').html('');
	
	var bookingDetails = '';

	var grandTotal = 0;
	
	for(var indexOfArray = 0 ; indexOfArray  < durationarray.length ; indexOfArray ++){

		if(durationarray[indexOfArray] && durationarray[indexOfArray] !== ''){
			var mealDetails = durationarray[indexOfArray].split("-");
			var type = mealDetails[0];
			var day = mealDetails[1];
			var mealId = mealDetails[2];
			
			
			var price = 0;
			
			if(type == 'breakfast'){
				price = 50;
			}else if(type == 'brunch'){
				price = 80;
			}else if(type == 'lunch'){
				price = 120;
			}else if(type == 'dinner'){
				price = 160;
			}
			
			bookingDetails = bookingDetails 
			+'<ul>'
			+'<li><strong>Meal Type</strong><span class="bookdetails">'+type+'</span></li>'
			+'<li><strong>Meal Price</strong><span class="bookdetails">Rs. '+price+'</span></li>'
			+'<li><strong style="margin-right:10px">Duration</strong><span class="bookdetails">'+day+' Days</span></li>'
			+'<li><strong style="margin-right:8px">Quantity</strong><span class="bookdetails"'
			+'id="addquantity">'+person+' Person</span></li>'
			+'<li><strong>Price</strong><span style="margin-left:6em">('+price+' * '+day+' * '+person+')</span><span style="margin-left:3em">Rs. '+(price * person * parseInt(day))+' </span></li>'
			+'</ul><hr>';	
			
			grandTotal = grandTotal + (price * person * parseInt(day));
		}
	}
	
	$('#totalPrice').html(grandTotal);
	$('#bookingDetails').html(bookingDetails);
}

function selectQuantity(quantity){
	
	person = quantity;
	
	$(".quantity").removeClass("durationboxselect");
	$("#quantity"+quantity).addClass("durationboxselect");
	
	generateBookinDetails();
	
}

function proceedToCheckOut(){

	if(durationarray.length > 0){
		var request = {};
		var orderList = [];
		
		const urlParams = new URLSearchParams(window.location.search);
		const vendorId = urlParams.get('id');
		
		request['person'] = person;
		request['orderList'] = orderList;
		request['vendorLoginId'] = vendorId ;
		
		for(var index = 0 ; index < durationarray.length ; index ++){
			
			var order = durationarray[index].split("-");
		
			var mealType = order[0];
			var days = order[1];
			var mealId = order[2];
		
			var obj = {};
			
			obj['mealId'] = mealId;
			obj['mealType'] = mealType;
			obj['days'] = days;
			
			orderList.push(obj);			
		}

		
		
		$('#firstname').val("");
		$('#lastname').val("");
		$('#contactno').val("");
		$('#email').val("");
		$('#area').val("");
		$('#address').val("");
		
		$("#myModal").modal("toggle");
		
		orderRequest = request;
		
	}else{
		showErrorToast('Please select your menu first');		
	}
}


function validateOrderDetais() {
	
	var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
	
	if ($('#firstname').val().trim() === '') {
		$('#firstname').focus()
		showErrorToast('Please enter your first name')
		return false;
	} else if ($('#lastname').val().trim() === '') {
		$('#lastname').focus()
		showErrorToast('Please enter your last name')
		return false;
	} else if ($('#contactno').val().trim() === '') {
		$('#userErrDivId').focus()
		showErrorToast('Please enter your Contact number')
		return false;
	} else if ($('#contactno').val().length != 10) {
		$('#userErrDivId').html('');
		showErrorToast('please enter valid contact number');
		return false;
	}else if ($('#email').val().trim() === '') {
		$('#email').focus()
		showErrorToast('Please enter your Email')
		return false;
	}else if (!$('#email').val().match(mailformat)) {
		showErrorToast('please enter valid email ');
		return false;
	}if ($('#areaId').val().trim() === '') {
		$('#areaId').focus()
		showErrorToast('Please select Area ')
		return false;
	}else if ($('#address').val().trim() === '') {
		$('#address').focus()
		showErrorToast('Please enter your Address')
		return false;
	} 
	else {
		saveOrderDetails();
	}
}

function saveOrderDetails(){
	
	var firstName = $('#firstname').val();
	var lastName = $('#lastname').val();
	var contactno =	$('#contactno').val();
	var email =	$('#email').val();
	var area = $('#areaId').val();
	var address = $('#address').val();
	
	orderRequest['firstName'] = firstName;
	orderRequest['lastName'] = lastName;
	orderRequest['contactno'] = contactno;
	orderRequest['email'] = email;
	orderRequest['area'] = area;
	orderRequest['address'] = address;
	
	console.log(orderRequest)
	
	$.ajax({
        url: 'bookOrder',
        type: 'POST',
        headers:{
        	"content-type":"application/json"
        },
        data: JSON.stringify(orderRequest),
        error: function () {
            console.log("error");
        },
        success: function () {

        }
    })
}

$(document).ready(function() {
	$('#contactno').bind("cut copy paste", function(e) {
		e.preventDefault();
	});
});

$(document).ready(function() {
	$("#contactno").bind("keypress", function(e) {
		var keyCode = e.which ? e.which : e.keyCode

		if (!(keyCode >= 48 && keyCode <= 57)) {
			$(".error").css("display", "inline");
			return false;
		} else {
			$(".error").css("display", "none");
		}
	});
});


