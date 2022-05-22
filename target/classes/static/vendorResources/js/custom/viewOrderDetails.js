function viewOrderDetails(id) {
	
	var tiffinBodyId = document.getElementById("dishTableMenu");
	//tiffinBodyId.innerHTML = '';
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
				/*data = data + '<tr><td>'+ (index+1) +'</td><td>'+jsn[index].days+'</td>'+
								'<td>'+jsn[index].mealVO.mealType+'</td>'+
								'<td>'+jsn[index].ordervo.id+'</td></tr>';*/
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
			
			tiffinBodyId.innerHTML = data;
			
			$("#myModal").modal("toggle");
			//orderRequest = request;
		}
	}

	htp.open("get", "viewOrderDetailsByOrder?id=" + id, true);
	htp.send();

}