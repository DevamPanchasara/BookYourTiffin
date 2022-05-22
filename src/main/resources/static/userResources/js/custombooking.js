var record_selected = new Array();
var durationarray = new Array();
var person = 1;
var totalPrice = 0;

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
	totalPrice = 0;
	
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
	
	totalPrice = grandTotal;
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
	
	$("#myModal").modal("hide");
	$('#preloader').css("display","");
	
	setTimeout(function(){
		
	
	
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
	
	orderRequest['totalPrice'] = totalPrice;
	
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
        success: function (response) {

        	console.log(response);
        	
        	$('#preloader').css("display","none");
        	
        	if(response && response.orderId && response.orderId != ''){
        		showSuccessToast("Your order is confirmed with order Id <b>"+response.orderId+"</b>. Please check details of order in my order.")
        		
        		setTimeout(function(){
        			window.location.href = 'myOrders';
        		},2000)
        		
        	}else{
        		showErrorToast('Something went wrong please try again...!!')
        		setTimeout(function(){
        			window.location.reload();
        		},2000)
        	}
        }
    })
	}, 3000);
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



function proceedToViewOrderDetials(id)
{

	var tiffinBodyId = document.getElementById("orderDetails");
	var orderDetailsId = document.getElementById("orderDetailsId");
	tiffinBodyId.innerHTML = '';

	var htp = new XMLHttpRequest();
	htp.onreadystatechange = function() {
		if (htp.readyState == 4) {
			var jsn = JSON.parse(htp.responseText);
			var data = '';
			var totalPrice = 0;
			var orderId = '';
			var address='';
			var phoneNumber = '';
			var email = '';
			var status = '';
				
				for(var index  = 0 ; index <jsn.length ; index++){
					
					totalPrice = jsn[0].ordervo.totalPrice;
					orderid = jsn[0].ordervo.orderid;
					address = jsn[0].ordervo.address !== null ? jsn[0].ordervo.address : '-';
					phoneNumber = jsn[0].ordervo.contactno;
					email = jsn[0].ordervo.email;
					
					var orderStatus = jsn[0].ordervo.orderStatus;
					
					if(orderStatus === 'ORDERED'){
						status = '<div class="badge badge-info" style="background: orange">ORDERED</div>';
					}else if(orderStatus === 'ACCEPTED'){
						status = '<div class="badge badge-success" style="background: green">ACCEPTED</div>';
					}else if(orderStatus === 'REJECTED'){
						status = '<div class="badge badge-warning" style="background: red">REJECTED</div>';
					}
					
					var price = 0;
					var type = jsn[index].mealVO.mealType;
					var person = jsn[index].ordervo.person;
					var days = jsn[index].days;
					
					if(type.toLowerCase() == 'breakfast'){
						price = 50;
					}else if(type.toLowerCase() == 'brunch'){
						price = 80;
					}else if(type.toLowerCase() == 'lunch'){
						price = 120;
					}else if(type.toLowerCase() == 'dinner'){
						price = 160;
					}
					
					data = data + '<tr>'
					+'<td>'+ (index+1) +'</td>'
					+'<td>'+type+'</td>'
					+'<td>'+days+'</td>'
					+'<td>'+person+'</td>'
					+'<td>'+(price*person*days)+'      ( '+price+' * '+days+' * '+person+' ) </td>'
					+'</tr>';
				}
				
				data = data  + '<tr>'
				+ '<th colspan="4">Total Price</th>'
				+ '<th>'+totalPrice+' Rs. </th>'
				+'</tr>';
				
				data = data + '<tr><td colspan="5"></td></tr>'

				data = data + '<tr>'
				+'<th>Email</th>'
				+'<td colspan="4">'+email+'</td>'
				+'</tr>'
				

				data = data + '<tr>'
				+'<th>Contact Number</th>'
				+'<td colspan="4">'+phoneNumber+'</td>'
				+'</tr>'
				

				data = data + '<tr>'
				+'<th>Delivery Address</th>'
				+'<td colspan="4">'+address+'</td>'
				+'</tr>'
				
				data = data + '<tr>'
				+'<th>Order Status</th>'
				+'<td colspan="4">'+status+'</td>'
				+'</tr>'
				
				orderDetailsId.innerHTML = '<b>ORDER DETAILS : </b>' +  orderid;
				tiffinBodyId.innerHTML = data;
				
				$("#myModal").modal("toggle");
				// orderRequest = request;
			}
		}
		
		htp.open("get", "viewOrderDetailsByOrderId?id=" + id, true);
		htp.send();
	
}




