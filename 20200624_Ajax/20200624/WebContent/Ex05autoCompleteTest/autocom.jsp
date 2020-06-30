<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>
#suggest {
	margin-top: 4px;
	width: 290px;
	display: none;
}

#result {
	border: 1px solid #aaa;
	padding: 10px 0 0 20px;
	box-sizing: border-box;
	width: 600px;
	height: 300px;
}
</style>


</head>
<body>
	<h1>AutoCom(JSON)</h1>
	<div id="div">
		<input type="text" size ='30' id='findStr'/>
		<input type='button' value='검색' id='btn'/>
		<br/>
		<select size='10' id='suggest'></select>
	</div>
	<div id='result'></div>
	<script>
	/**
	 * 
	 */

	$id = function(id){ return document.getElementById(id)}
	$id('findStr').onkeyup = function(e){
		var key = event.keyCode;
		console.log(key);
		findFunc();
	}

	$id('btn').onclick = findFunc;

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
	
	</script>


</body>

</html>