<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>

div#res{
	width: 120px;
	height: 200px;
	border:2px solid #00CED1;
	margin-top: 10px;
	padding: 10px;
	box-sizing: border-box;
	border-radius: 12px 12px 12px 12px;
	font-size: 50x;
	
}


</style>

<meta charset="UTF-8">
<title>구구단</title>
</head>


<body>
<h1> Ajax 를 이용한 구구단</h1><br/>
<input type="text" name ="dan" id="dan">
<input type="button" value="구구단 생성" id="btn">
<p/>

<div id="res"></div>
</body>

<script type="text/javascript">

	var xhr = new XMLHttpRequest();
	var btn = document.getElementById("btn");
	var dan = document.getElementById('dan');
	var res = document.getElementById('res');
	
	
	btn.onclick = function () {
		//alert('called');
		xhr.open('GET' ,'guguRes.jsp?dan='+dan.value,true);
		// method , to, bool -> 초기화		
		xhr.send();
		
		xhr.onreadystatechange = function name() {
			//status 200 : 완료 , readyState 4: complete 정상수신
			if(xhr.status == 200 && xhr.readyState == 4){
				res.innerHTML  = xhr.responseText;
			}
			else
				res.innerHTML  = "ERROR";
		}
	}
	

</script>



</html>