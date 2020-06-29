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


<!--     <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/navbar-fixed/"> -->
<!--   <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/navbars/"> -->
<!-- Bootstrap core CSS -->
<!-- <link href="../assets/dist/css/bootstrap.css" rel="stylesheet"> -->


<!-- <link rel="stylesheet" -->
<!-- 	href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.5.0/cerulean/bootstrap.min.css"> -->
<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" -->
<!-- 	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" -->
<!-- 	crossorigin="anonymous"></script> -->
<!-- <script -->
<!-- 	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" -->
<!-- 	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" -->
<!-- 	crossorigin="anonymous"></script> -->
<!-- <script -->
<!-- 	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" -->
<!-- 	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" -->
<!-- 	crossorigin="anonymous"></script> -->



<style>
main {
	padding-top: 6rem;
}
@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
/*overflow:hidden을 선언해줘야 확대 시 이미지가 밖으로 넘치지 않아요!*/
/* .scale img { transform:scale(1); transition:transform 0.5s linear;} */

.scale:hover img { 
	transform:scale(1.5);             /*  default */
   -webkit-transform:scale(1.5);     /*  크롬 */ 
   -moz-transform:scale(1.5);       /* FireFox */ 
   -o-transform:scale(1.5);           /* Opera */ 
	border: 1px solid orange;
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








	<main role="main" class="container">
		<div class="jumbotron text-center">
			<h1>에어팟 프로, 그것은 섹시하니까</h1>
			<p class="lead">
				온전히 빠져들게 하는 액티브 노이즈 캔슬링.<br> 주변의 소리를 들려주는 주변음 허용 모드. <br>
			</p>
			<p>
			<a class="btn btn-lg btn-primary" href="search/searchProc.jsp"
				role="button">지금 지훈이에게 후원하기 &raquo;</a>
			<a class="btn btn-lg btn-primary" href="/zeus/price/priceForm.jsp" role="button">가격 보기 &raquo;</a>
			</p>
			<p>
			<a class="btn btn-lg btn-primary" href="/zeus/carousel.jsp" role="button">Carousel &raquo;</a>
			</p>
			<p>
				<button class="btn btn-lg btn-primary my-2 my-sm-0" type="submit"
					 onclick="window.location.href='/zeus/signup/signupBuyer.jsp'">Buyer Upgrade &raquo;</button>
				<button class="btn btn-lg btn-primary my-2 my-sm-0" type="submit"
					 onclick="window.location.href='/zeus/signin/signupSeller.jsp'">Seller Upgrade &raquo;</button>
			</p>
		</div>
	</main>




	<div class="container">
		<div class="row text-center d-flex justify-content-between">


			<div class="card m-3 " style="width: 18rem;">
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

			<div class="card m-3 " style="width: 18rem;">
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




			<div class="card m-3 " style="width: 18rem;">
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


			<div class="card m-3 " style="width: 18rem;">
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

			<div class="card m-3 " style="width: 18rem;">
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

			<div class="card m-3 " style="width: 18rem;">
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



	<!-- 	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" -->
	<!-- 		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" -->
	<!-- 		crossorigin="anonymous"></script> -->
	<script>
		// 		window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')
	</script>
	<!-- 	<script src="/dist/js/bootstrap.bundle.js"></script> -->


	<div class="fixed-bottom">CopyRight @ Zeus GP. All rights
		reserved.</div>
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
