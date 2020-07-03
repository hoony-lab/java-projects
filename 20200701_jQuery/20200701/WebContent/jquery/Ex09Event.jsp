<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event</title>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
   integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
   crossorigin="anonymous"></script>

<script>

$(document).ready(function(){

	$('#frm').submit(function(){
		var data = $(this).serialize();
// 		alert(data);
// 		$('#div').text(data);
		

		var xhr = new XMLHttpRequest();
		xhr.open('get','Ex09Event_result.jsp?' + data);
		xhr.send();
		xhr.onreadystatechange() = function(){
			if(xhr.state == 200 && xhr.readyState == 4){
				$('#div').html(xhr.responseText);
			}
		}
		
		return false;
	});
	
	
});

</script>
</head>
<body>
<h1>Serialize</h1>
<div>
<form id='frm' action='Ex09Event_result.jsp'>
	<input type='text' name='id' value='hong'><br>
	<input type='text' name='name' value='hong gil dong'><br>
	<input type='radio' name='gender' value='여자'>여자<br>
	<input type='radio' name='gender' value='남자'>남자<br>
	<br>
	<input type='checkBox' name='hobby' value='야구'>야구<br>
	<input type='checkBox' name='hobby' value='축구'>축구<br>
	<input type='checkBox' name='hobby' value='농구'>농구<br>
	
	<input type='submit' value="submit">
	<br>	
</form>
</div>
<div id='div'></div>
</body>
</html>