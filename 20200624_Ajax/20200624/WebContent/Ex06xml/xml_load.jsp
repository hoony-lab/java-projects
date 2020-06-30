<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>xml_load</h1>
	<div id="div">
		<input type="text" size ='30' id='findStr'/>
		<input type='button' value='검색' id='search'/>
		<br/>
		<select size='10' id='suggest'></select>
	</div>
	<div id='result'></div>
<script>

$id = function(id) {return document.getElementById(id)}
$id('btn').onclick = function(){
	var url = "xml_data.jsp?findStr=" + $id('findStr').value;
	var xhr = new XMLHttpRequest();
	xhr.open('get', url);
	
	xhr.onreadystatechange = function(){
		if(xhr.status == 200 && xhr.readyState == 4){
			var data = xhr.responseXML;
			console.log(data);
			var list = data.getElementsByTagName('product');
			var str = "";
			
			for(var i = 0 ; i < list.length ; ++i){
				var item = list.item(i);
				var id = document.getElementsByTagName('id').item(0).firstChild.nodeValue;
				var name = document.getElementsByTagName('name').item(0).firstChild.nodeValue;
				var unit = document.getElementsByTagName('unit').item(0).firstChild.nodeValue;
				var price = document.getElementsByTagName('price').item(0).firstChild.nodeValue;
			}
		}
	}
	
	xhr.send();
}


</script>
</body>
</html>