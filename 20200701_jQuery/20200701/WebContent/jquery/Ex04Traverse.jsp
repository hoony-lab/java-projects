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
	// .filter를 사용하여 2 or 5의 배수 선택
	$('li').filter(function(index){
		return (index % 2 == 0 || index % 5 == 0);
	}).css('color', '#f9f');
	
	// .slice를 사용하여 2, 4 까지 선택하여 굵게 ~
	$('li').slice(2, 5).css('font-weight', 'bold');
	
});
</script>
</head>
<body>
<h1>Traverse test</h1>
	<div>
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
</body>
</html>
