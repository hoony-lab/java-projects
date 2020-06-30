/**
 * 
 */

$id = function(id){ return document.getElementById(id)}
$id('findStr').onkeyup = function(e){
	var key = event.keyCode;
	console.log(key);
	findFunc();
}

$id('btn').onclick = findFunc();

function findFunc(){

	var findStr = $id('findStr').value;
	var url = 'autocom_result.jsp?findStr=' + findStr;
	var xhr = new XMLHttpRequest();
	var sel = $id('suggest');
	sel.ondblclick = select;
	
	xhr.open('get', url);
	xhr.onreadystatechange = function(){
		if(xhr.status == 200 && xhr.readyState == 4){
			var data = JSON.parse(xhr.responseText);
			sel.length = 0;
			
			if(data.length > 0)
				sel.style.display = "block";
			else
				sel.style.display = "none";
			
			for(var i = 0 ; i < data.length; ++i)
				sel.options[i] = new Option(data[i], data[i]);
		}
	}
	xhr.send();
}

function select(){
	var sel = $id('suggest');
	sel.style.display = 'none';
	
	var val = sel[sel.selectedIndex].text;
	var url = 'autocom_view.jsp?findStr=' + val;
	var xhr = new XMLHttpRequest();
	xhr.open('get', url);
	xhr.onreadystatechange = function(){
		if(xhr.status == 200 && xhr.readyState == 4){
			var data = JSON.parse(xhr.responseText);
			var str = 	'<li>no : ' + data.no + '</li>' + 
						'<li>title : ' + data.title + '</li>' +
						'<li>id : ' + data.id + '</li>' + 
						'<li>writedate : ' + data.writedate	+ '</li>';
						
			$id('result').interHTML = str;
		}
	}
	xhr.send();
	
}