function FormAction(page){
	let form = document.getElementsByTagName("form");
	form[0].action = page;
	form[0].method = "post";
	form[0].submit();
}

function sendAuth(){
	FormAction("sendAuth.jsp");
	
	let recvUserEmail = document.getElementById("recvUsrEmail");
	alert("sendAuth() : " +  recvUserEmail.value);
}

function checkAuth(){
	FormAction("checkAuth.jsp");
	
	let authCheckNum = document.getElementById("authCheckNum");
	alert("checkAuth() : " + authCheckNum.value);
}