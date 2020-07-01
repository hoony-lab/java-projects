<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Core</title>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
   integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
   crossorigin="anonymous"></script>

<script>
var bg = [ '#f00', '#00f', '#0f0','#ff0'];

$(document).ready(function(){

	$('.each_div1').each(function(i){
		$(this).css('background-color',bg[i]);
	});
		
});
</script>
</head>
<body>
<h1>Manipulation</h1>

<div class='each_div1'>11
		<ol start='0'>
			<li>백두산</li>
			<li>한라산</li>
			<li>금강산</li>
			<li>우장산</li>
			<li>설악산</li>
			<li>봉제산</li>
			<li>봉제산</li>
			<li>봉제산</li>
			<li>봉제산</li>
			<li>봉제산</li>
			<li>봉제산</li>
			<li>봉제산</li>
		</ol>
		
		</div>
<div class='each_div1'>22
		<ol start='0'>
			<li>백두산</li>
			<li>한라산</li>
			<li>금강산</li>
			<li>우장산</li>
			<li>설악산</li>
			<li>봉제산</li>
			<li>봉제산</li>
			<li>봉제산</li>
			<li>봉제산</li>
			<li>봉제산</li>
			<li>봉제산</li>
			<li>봉제산</li>
		</ol>
		</div>
<div class='each_div1'>33
		<ol start='0'>
			<li>백두산</li>
			<li>한라산</li>
			<li>금강산</li>
			<li>우장산</li>
			<li>설악산</li>
			<li>봉제산</li>
			<li>봉제산</li>
			<li>봉제산</li>
			<li>봉제산</li>
			<li>봉제산</li>
			<li>봉제산</li>
			<li>봉제산</li>
		</ol>
		</div>
<div class='each_div1'>44</div>
<p id='here'>HERE</p>


</body>
</html>