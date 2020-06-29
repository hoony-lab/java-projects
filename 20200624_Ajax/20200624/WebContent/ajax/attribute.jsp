<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>attribute</title>

</head>
<body>
	<div id="result">
		<input type="button" id="btnCreate" value="create btn"/>
		<input type="button" id="btnRadio" value="change radio"/>
		<input type="button" id="btnCheck" value="change check"/>
	</div>
</body>


<script>
	$id = function(id) { return document.getElementById(id) }
	
	$id('btnCreate').onclick = function(){
		var btn = document.createElement('input');
		btn.setAttribute('id', 'btn');
		btn.setAttribute('type', 'text');
		btn.value ="hhhh";
		
		var label = document.createElement('label');
		label.setAttribute('id', 'lbl')
		label.setAttribute('for', 'btn');
		$id('result').appendChild(label);
		
		$id('result').appendChild(btn);
	}
	
	$id('btnRadio').onclick = function(){
// 		if($id('btnCheck').getAttribute('type') != 'checkBox')
// 			$id('btnCheck').setAttribute('type', 'checkBox');
// 		else
// 			$id('btnCheck').setAttribute('type', 'button');
		$id('btn').setAttribute('type', 'radio');
		$id('lbl').innerText = "radio";

		
	}
	
	$id('btnCheck').onclick = function(){
		$id('btn').setAttribute('type', 'checkBox');
		$id('lbl').innerText = "checkBox";
		
	}

		
</script>


</html>