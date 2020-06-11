
function memberForm(){
	let form = document.getElementById("form");
	var id = document.getElementById("id");
	var pw = document.getElementById("pw");
	var pwCheck = document.getElementById("pwCheck");
	var email = document.getElementById("email");
	var authNum = document.getElementById("authNum");
	var authNumAttr = document.getElementById("authNumAttr");
	
	if(id.value == "" || pw.value == "" || pwCheck.value == "" || email.value == "" || authNum.value == ""){
		alert("필수 정보 입력 정보 필수 !");
		return;
	}


	if(pw.value != pwCheck.value){
		pw.focus();
		alert("Matching Password Error !");
		return;
	}

	if(authNum.value != authNumAttr.value){
		authNum.focus();
		alert("AuthNum Error !");
		return;
	}

	form.submit();
}

function CheckAll(){
	var id = document.getElementById("id");
	var pw = document.getElementById("pw");
	var pwCheck = document.getElementById("pwCheck");
	var email = document.getElementById("email");
	var authNum = document.getElementById("authNum");

	if(id.value == "" || pw.value == "" || pwCheck.value == "" || email.value == "" || authNum.value == ""){
		alert("필수 정보 입력 정보 필수 !");
		return;
	}
	return;
}

function CheckPw(){
	var reg = /^[a-z][a-z0-9_-]{3,20}@([a-z\d\.-]+)\.([a-z\.]{2,6})$/;
	var pw = document.getElementById("pw");
	var pwCheck = document.getElementById("pwCheck");
	var authNum = document.getElementById("authNum");
	var authNumAttr = document.getElementById("authNumAttr");

	let form = document.getElementById("form");

	if(pw.value != pwCheck.value){
		pw.focus();
		alert("Password Error !");
		return;
	}

	if(authNum.value != authNumAttr.value){
		authNum.focus();
		alert("AuthNum Error !");
		return;
	}

	form.submit();
	return;
}