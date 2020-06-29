<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>autocomplete</title>
<style>
#suggest{
	margin-top: 4px;
	width: 290px;
	display: none;
}
#result{
	border: 1px solid #aaa;
	padding: 10px;
	box-sizing: border-box;
	width: 600px;
	height: 300px;
}
</style>
</head>
<body>
<h1>Autocomplete(JSON)</h1>
<div id='div'>
	<input type='text' size='30' id='findStr' />
	<input type='button' value='검색' id='btn' />
	<br/>
	<select size='10' id='suggest'></select>
</div>
<div id='result'></div>

<script>
$id = function(id) { return document.getElementById(id) }
$id('findStr').onkeyup = function(event) {
	//눌려진 키가 enter인 경우만 함수 실행
	var key = event.keyCode;
	console.log(key);
	//if(key == 13){
	findFunc();		
	//}
	
}
$id('btn').onclick = findFunc;


function findFunc() {
	var findStr = $id('findStr').value;
	var url = 'autocomplete_result.jsp?findStr=' + findStr;
	var xhr = new XMLHttpRequest();
	var sel = $id('suggest'); //select box
	sel.ondblclick = select;
	
	xhr.open('GET', url);
	xhr.onreadystatechange = function(){
		if(xhr.status==200 && xhr.readyState==4){
			var data = JSON.parse(xhr.responseText);
			// select상자에 있던 기존 자료를 모두 삭제
			sel.length = 0;
			
			// 수신된 data에 자료가 있는 경우 select box보여줌
			if(data.length > 0){
				sel.style.display = "block";
			} else{
				sel.style.display = "none";
			}
			
			//응답된 JSON 타입의 데이터를 select box에 표시
			for(var i=0; i<data.length; i++){
				sel.options[i] = new Option(data[i], data[i]);
			}
		}
	}
	xhr.send();
}

function select() {
	var sel = $id('suggest');
	sel.style.display = 'none';
	var val = sel[sel.selectedIndex].text;
	var url = "autocomplete_view.jsp?findStr=" + val;
	var xhr = new XMLHttpRequest();
	xhr.open('GET', url);
	xhr.onreadystatechange = function() {
		if(xhr.status==200 && xhr.readyState==4){
			var data = JSON.parse(xhr.responseText);
			var str = '<li>no : ' +data.no+ '</li>'
					+'<li>title : ' +data.title+ '</li>'
					+'<li>id : ' +data.id+ '</li>'
					+'<li>writedate : ' +data.writedate+ '</li>';
			
				$id('result').innerHTML = str;
		}
	}
	xhr.send();
}
</script>
</body>
</html>