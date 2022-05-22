function viewDishesOfTiffinMenu(id){
	
	var dishTableMenu = document.getElementById("dishTableMenu");

	var htp = new XMLHttpRequest();
	
	htp.onreadystatechange = function() {
		if (htp.readyState == 4) {
			var jsn = JSON.parse(htp.responseText);
			
			var data = '';
	

			dishTableMenu.innerHTML = '';
			for(var index  = 0 ; index <jsn.length ; index++){
				
				data = data + '<tr><td>'+(index+1)+'</td><td>'+jsn[index].dishName+'</td><td><img src="/documents/dishDetails/'+jsn[index].dishfileName+'"></img></td></tr>';
				
			}
			
			dishTableMenu.innerHTML = data;
		}
	}

	htp.open("get", "viewDishesOfTiffinMenu?id=" + id, true);
	htp.send();
}
function getTiffinByDays() {
	var day = document.getElementById("days");
	var tiffinBodyId = document.getElementById("tiffinBodyId");

	var htp = new XMLHttpRequest();

	htp.onreadystatechange = function() {
		if (htp.readyState == 4) {
			var jsn = JSON.parse(htp.responseText);
			var data = '';
	

			tiffinBodyId.innerHTML = '';
			for(var index  = 0 ; index <jsn.length ; index++){
				
				data = data + '<tr><td>'+ (index+1) +'</td><td>'+jsn[index].mealVO.mealType+'</td>'+
									'<td>'+jsn[index].timefrom + ' to ' + jsn[index].timeto + '</td>'+
									'<td>'+jsn[index].price + ' <i class="fa fa-rupee"></i>' +' </td>'+
									'<td><i class="mdi mdi-information-variant" data-toggle="modal" data-target="#exampleModal-4" onclick="viewDishesOfTiffinMenu('+jsn[index].id+')" style="font-size: 20px; color: #ee4747; margin-left: 15px;"></i></td>'+
									'<td><a href="editTiffinMenu?id='+jsn[index].id+'"> <i class="mdi mdi-pencil-box" style="font-size: 20px; margin-left: 15px;"></i></a><a href="deleteTiffinMenu?id='+jsn[index].id+'"><i class="mdi mdi-delete" style="font-size: 20px; color: #ee4747; margin-left: 15px;"></i></a></td></tr>';
				
			}
			
			tiffinBodyId.innerHTML = data;
		}
	}

	htp.open("get", "viewTiffinMenuByDay?day=" + day.value, true);
	htp.send();
}