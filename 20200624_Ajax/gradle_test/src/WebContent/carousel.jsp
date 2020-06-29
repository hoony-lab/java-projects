<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" 		content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" 	content="ZEUS">
<meta name="author"			content="zihoony.kim, S, J, and Bootstrap contributors">
<!-- <meta name="generator" content="Jekyll v4.0.1"> -->
<link rel="shortcut icon" href="/zeus/img/zeus_logo_transparent.png">
<title>Zeus</title>


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">


<style>
body {
	padding-top: 7rem;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.carousel-inner img {
	margin: auto; 
	max-width: 100%;
}

.carousel-inner > .item > img {
    margin: 0 auto;
}


</style>


<!-- 상단 네비게이션 바 -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<a class="navbar-brand" href="/zeus/index.jsp"> 
		<img src="/zeus/img/zeus_logo_transparent.png" alt="logo" style="width: 1.5rem;">
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active">
				<a class="nav-link" href="#">Home<span class="sr-only">(current)</span></a>
			</li>
			
			<li class="nav-item">
				<a class="nav-link" href="#">Link</a>
			</li>
			
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Dropdown </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Action</a>
					<a class="dropdown-item" href="#">Another action</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Something else here</a>
				</div>
			</li>

			<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a></li>
		</ul>


		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2 p-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>


		<div class="">
			<ul class="navbar-nav">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit" onclick="window.location.href='/zeus/cart/cart.jsp'">Basket</button>
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit" onclick="window.location.href='/zeus/dashboard/mypage.jsp'">My Page</button>
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit" onclick="window.location.href='/zeus/signin/signout.jsp'">Sign Out</button>

				<button class="btn btn-outline-success my-2 my-sm-0" type="submit" onclick="window.location.href='/zeus/signup/signup.jsp'">Sign Up</button>
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit" onclick="window.location.href='/zeus/signin/signin.jsp'">Sign In</button>
			</ul>
		</div>
	</div>
</nav>


</head>


<body>


<div class="container">
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" align="center">
			<div class="carousel-item active">
				<img class="d-block w-100" src="/zeus/img/16_macbook_pro.jpg"
					alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="/zeus/img/ipad_pro_4.jpg"
					alt="Second slide">
			</div>
			<div class="carousel-item w-50">
				<img class="d-block mx-auto" src="/zeus/img/airpods_pro.jpg"
					alt="Third slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
</div>




	<div class="fixed-bottom">CopyRight @ Zeus GP. All rights reserved.</div>
</body>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
	integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
	crossorigin="anonymous"></script>
</html>
