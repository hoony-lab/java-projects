<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Effect</title>

<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" -->
<!-- 	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" -->
<!-- 	crossorigin="anonymous"></script> -->

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
#show_div {
	border: 1px solid #aaa;
	width: 200px;
	text-overflow: clip;
}

.show_btn {
	width: 100px;
	height: 30px
}
</style>


<script>
	$(document).ready(function() {
		$('#show_show').click(function() {
			$('#show_div').show();
		})

		$('#show_show2').click(function() {
			$('#show_div').show('slow');
		})

		$('#show_show3').click(function() {
			$('#show_div').show(2000);
		})

		$('#show_hide').click(function() {
			$('#show_div').hide();
		})

		$('#show_hide2').click(function() {
			$('#show_div').hide('slow');
		})

		$('#show_hide3').click(function() {
			$('#show_div').hide(2000);
		})

		
		
		// hide
		$('fieldset').css({
			'display'	: 'inline-block',
			'width'		: '200px'
		})
		$('img').css({
			'width'		: '200px'
		})
		
		
		$('#btnHide').click(function(){
			$('.ani1').hide(2000);
		})
		$('#btnShow').click(function(){
			$('.ani1').show(2000);
		})
		$('#btnToggle').click( function(){
			$('.ani1').toggle('slow');
		})
		
		$('#btnSlideDown').click(function(){
			$('.ani2').slideDown(2000);
		})
		$('#btnSlideUp').click(function(){
			$('.ani2').slideUp(2000);
		})
		$('#btnSlideToggle').click( function(){
			$('.ani2').slideToggle('slow');
		})
		
		
		$('#btnFadeIn').on('click', function(){
			$('.ani3').fadeIn(2000);
		})
		$('#btnFadeOut').on('click', function(){
			$('.ani3').fadeOut(2000);
		})
		$('#btnFadeToggle').on('click', function(){
			$('.ani3').fadeToggle('slow');
		})
		
		
	})
	
	afterFunc = function(){
		alert('참새 귀환 ㅋ');
	}
	
</script>

</head>


<body>
	<h1>Effect</h1>

<div>
	<button id='show_show' class='show_btn'>Show</button>
	<button id='show_show2' class='show_btn'>Slow Show</button>
	<button id='show_show3' class='show_btn'>speed Show</button>
	<br />
	<button id='show_hide' class='show_btn'>Hide</button>
	<button id='show_hide2' class='show_btn'>Slow Hide</button>
	<button id='show_hide3' class='show_btn'>speed Hide</button>

	<div id='show_div'>
		<label>speed option :</label>
		<ul>
			<li>slow
			<li>fast
			<li>nomal
			<li>n/1000
		</ul>
	</div>

<br><hr><br>
</div>

<fieldset>
	<legend>SHOW</legend>
	<input type="button" value="show"	id='btnShow'>
	<input type="button" value="hide"	id='btnHide'>
	<input type="button" value="toggle"	id='btnToggle'>
</fieldset>

<fieldset>
	<legend>SLIDE</legend>
	<input type="button" value="down"	id='btnSlideDown'>
	<input type="button" value="up"	id='btnSlideUp'>
	<input type="button" value="toggle"	id='btnSlideToggle'>
</fieldset>

<fieldset>
	<legend>FADE</legend>
	<input type="button" value="in"	id='btnFadeIn'>
	<input type="button" value="out"	id='btnFadeOut'>
	<input type="button" value="toggle"	id='btnFadeToggle'>
</fieldset>

<div id='img'>
	<img src="../img/16_macbook_pro.jpg" class='ani1'>
	<img src="../img/good_morning.jpg" class='ani2'>
	<img src="../img/ipad_pro_4.jpg" class='ani3'>
</div>
</body>
</html>