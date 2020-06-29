<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<form id="frm" name="frm" method="post">
	<input style="width: 150px" id="usrId" name="usrId" type="text" placeholder="ID">
	<br/>
	<input style="width: 150px" id="pw" name="pw" type="password" placeholder="PW">
	<br/>
	<input id="login" type="button" value="login">
	
	<div id="res" > </div>
</form>


</body>

<script type="text/javascript">
$id = function (id) { return document.getElementById(id); }

var frm = $id('frm');
var btn = $id('login');
var res = $id('res');
var xhr = new XMLHttpRequest();

btn.onclick = function () {
	var data = 'Ex03_res.jsp?'+
			   'usrId='+frm.usrId.value +
			   '&pw='+frm.pw.value;
	
	// 메서드, 서버페이지, 비동기, 사용자, 암호
	xhr.open("GET", data);
	xhr.onreadystatechange = function () {
		console.log(xhr.status + ',' + xhr.readyState);
		
		if(xhr.status == 200 && xhr.readyState == 4){
			res.innerHTML  = xhr.responseText;
		}
		else
			res.innerHTML  = "ERROR";
	}
	
	xhr.send();
}


</script>


</html>