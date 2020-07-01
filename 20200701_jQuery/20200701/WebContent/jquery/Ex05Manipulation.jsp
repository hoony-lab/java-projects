<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
   integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
   crossorigin="anonymous"></script>

<script>
$(document).ready(function(){

	$('#here').css({
		'border'	:	"2px solid #f9f",
		'box-sizing':	"border-box"
	});
	
	$('#btnWrap').on('click', function(){
		var $this = "<div style='background-color: #FF0'></div>";
		$('#here').wrap($this);
	});
	
	$('#btnAppend').click(function(){
		var $this = "<input type='text'>";
		$('#here').append($this);
	});
		
});
</script>
</head>
<body>
<h1>Manipulation</h1>

<input type='button' id='btnWrap' value='wrap'>
<input type='button' id='btnAppend' value='append'>

<p id='here'>HERE</p>


</body>
</html>