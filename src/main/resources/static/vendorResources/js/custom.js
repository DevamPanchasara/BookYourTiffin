function fn() {
	
	var tbdiv1 = document.getElementById("tbdiv");
	tbdiv.style.display="";
	
	var dish1 = document.getElementById("dish");	
	
	var tb1 = document.getElementById("tb1");
	
	var row = tb1.insertRow(-1);
	
	var p = row.insertCell(0);
	var q = row.insertCell(1);
	var r = row.insertCell(2);
	var s = row.insertCell(3);
	
	p.innerHTML = 1 ;
	q.innerHTML = '<input type="text"  style="border:hidden; " id="dish" name="dishName" value="'+dish1.value+'">';
	r.innerHTML = '<input type="file" name="dishFile" class="file-upload-default">';
	s.innerHTML = '<button data-repeater-delete="" type="button"class="btn btn-danger btn-sm icon-btn ml-2" onclick="del(this)"><i class="mdi mdi-delete"></i></button>';
		
}
function del(a) {
	var l = a.parentNode.parentNode;
	
	var tb1 = document.getElementById("tb1");
	
	tb1.deleteRow(l.rowIndex);
}