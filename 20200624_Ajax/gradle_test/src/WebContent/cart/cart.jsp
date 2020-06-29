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

		<ul class="list-unstyled">
			<li class="media"><img class="mr-3 w-25"
				src="/zeus/img/airpods_pro.jpg" alt="Generic placeholder image">
				<div class="media-body">
					<h5 class="mt-0 mb-1"><i>소리로 소음을 압도하는 </i>AirPods Pro</h5>
					최소
					<h4>24시간</h4>
					배터리 선을 모르는 충전.<br> 지칠 줄 모르는 플레이.<br><br>
					
					단돈 <b>250원</b>에 만나보세요
					
				</div>
			
				<div><input type="button" value="선택"></div>	
			</li>
			
			<li><hr></li>
			
			<li class="media my-4"><img class="mr-3 w-25"
				src="/zeus/img/airpods_pro.jpg" alt="Generic placeholder image">
				<div class="media-body">
					<h5 class="mt-0 mb-1">List-based media object</h5>
					Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
					scelerisque ante sollicitudin. Cras purus odio, vestibulum in
					vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
					vulputate fringilla. Donec lacinia congue felis in faucibus.
				</div></li>
				
			<li><hr></li>
			
			<li class="media"><img class="mr-3 w-25"
				src="/zeus/img/airpods_pro.jpg" alt="Generic placeholder image">
				<div class="media-body">
					<h5 class="mt-0 mb-1">List-based media object</h5>
					Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
					scelerisque ante sollicitudin. Cras purus odio, vestibulum in
					vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
					vulputate fringilla. Donec lacinia congue felis in faucibus.
				</div></li>
		</ul>

		<div class="text-center">
			<h1 class="display-1" style="border: 5px solid red; ">지금 주문하기</h1>
		</div>



		<div class="col text-center">
	
		<div class="row">
			<div class="card m-3" style="width: 18rem;">
				<div class="scale">
					<img class="card-img-top p-3" src="/zeus/img/airpods_pro.jpg"
						alt="Card image cap">
				</div>
				<div class="card-body">
					<h3 class="card-title text-center">
						<i>소리로 소음을<br> 압도하다.
						</i>
					</h3>
					<p class="card-text">최소
					<h4>24시간</h4>
					배터리 선을 모르는 충전.<br> 지칠 줄 모르는 플레이.
					</p>
					<a href="#" class="btn btn-primary">지금 후원하기</a>
				</div>
			</div>
		</div>
			
	
			<div class="card m-3" style="width: 18rem;">
				<div class="scale">
					<img class="card-img-top p-3" src="/zeus/img/airpods_pro.jpg"
						alt="Card image cap">
				</div>
				<div class="card-body">
					<h3 class="card-title text-center">
						<i>소리로 소음을<br> 압도하다.
						</i>
					</h3>
					<p class="card-text">최소
					<h4>24시간</h4>
					배터리 선을 모르는 충전.<br> 지칠 줄 모르는 플레이.
					</p>
					<a href="#" class="btn btn-primary">지금 후원하기</a>
				</div>
			</div>
			
	
		<div class="row">
			<div class="card m-3" style="width: 18rem;">
				<div class="scale">
					<img class="card-img-top p-3" src="/zeus/img/airpods_pro.jpg"
						alt="Card image cap">
				</div>
				<div class="card-body">
					<h3 class="card-title text-center">
						<i>소리로 소음을<br> 압도하다.
						</i>
					</h3>
					<p class="card-text">최소
					<h4>24시간</h4>
					배터리 선을 모르는 충전.<br> 지칠 줄 모르는 플레이.
					</p>
					<a href="#" class="btn btn-primary">지금 후원하기</a>
				</div>
			</div>
		</div>
			
	
		<div class="row">
			<div class="card m-3" style="width: 18rem;">
				<div class="scale">
					<img class="card-img-top p-3" src="/zeus/img/airpods_pro.jpg"
						alt="Card image cap">
				</div>
				<div class="card-body">
					<h3 class="card-title text-center">
						<i>소리로 소음을<br> 압도하다.
						</i>
					</h3>
					<p class="card-text">최소
					<h4>24시간</h4>
					배터리 선을 모르는 충전.<br> 지칠 줄 모르는 플레이.
					</p>
					<a href="#" class="btn btn-primary">지금 후원하기</a>
				</div>
			</div>
		</div>
			
	
		<div class="row">
			<div class="card m-3" style="width: 18rem;">
				<div class="scale">
					<img class="card-img-top p-3" src="/zeus/img/airpods_pro.jpg"
						alt="Card image cap">
				</div>
				<div class="card-body">
					<h3 class="card-title text-center">
						<i>소리로 소음을<br> 압도하다.
						</i>
					</h3>
					<p class="card-text">최소
					<h4>24시간</h4>
					배터리 선을 모르는 충전.<br> 지칠 줄 모르는 플레이.
					</p>
					<a href="#" class="btn btn-primary">지금 후원하기</a>
				</div>
			</div>
		</div>
			
		
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
