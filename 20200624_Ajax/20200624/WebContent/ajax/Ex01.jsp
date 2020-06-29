<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>

div#res{
	width: 400px;
	height: 80px;
	border:2px solid #00CED1;
	margin-top: 10px;
	padding: 10px;
	box-sizing: border-box;
	border-radius: 12px 12px 12px 12px;
	font-size: 170px;
	
}

</style>

<meta charset="UTF-8">
<title>Ajax Ex01</title>
</head>


<body>
<input type="button" id="btn" value="Click Me">
<div id="res">

	

</div>
</body>



<script type="text/javascript">

	var $id = function (id) { return document.getElementById(id) }
		
	$id('btn').onclick = function () { 
		
		let xhr = new XMLHttpRequest();
		if(xhr){
			$id('res').innerHTML  = "객체 생성 완료 <br/>is겠어요";
		}
		else
			$id('res').innerHTML = "객체 생성 오류";
		
	}

</script>



</html>