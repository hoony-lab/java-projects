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
   
<style>
#filter>#form>form input:focus{
		background-color: #aaf;
}
</style>

<script>
$(document).ready(function(){
	
	$('#filter>#list>.table')
		.css('display','table');
	
	// {} using several options for css
	$('#filter>#list>.table>.row div')
		.css({
// 			'display'	:	'table-cell',
			'display'	:	'inline-block',
			'width'		:	'100px',
			'border'	:	"1px solid #00f"
		});
	
	$('#filter>#list>.table>.row:even')
		.css({
			'background-color'	:	'#ddd',
			'margin'	:	"auto"
		});
		
	
});
</script>   
</head>
<body>
<div id='filter'>
	<div id='form'>
		<form>
			<label for='id' >ID</label>
			<input type='checkBox' name='id' id='id'><br>
			
			<label for='name'>Name</label>
			<input type='text' name='name' id='name'><br>
			
			<label for='pw'>Password</label>
			<input type='text' name='pw' id='pw'><br>
			
		</form>
	</div>
	
	<br><hr><br>
	
	<div id='list'>
		<div class='table'>
			<% for(int i = 0 ; i < 30 ; ++i) { %>
			<div class="row">
				<div>No1</div>
				<div>Name</div>
				<div>Phone</div>
				<div>Email</div>
				<div>Address</div>
			</div>
			<br>
			<% } %>
		</div>
	</div>
	
	
</div>
</body>
</html>