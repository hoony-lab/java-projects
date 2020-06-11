function mailPatternChk(email){
	var reg = /^[a-z][a-z0-9_-]{3,20}@([a-z\d\.-]+)\.([a-z\.]{2,6})$/;
	var email = document.getElementById("email");
	
	if(!reg.test(email.value)){
		alert("이메일 형식이 잘못되었습니다.");
		return false;
	}
	return true;
}

function sendEmail(){

	if(!chkTxtFld("email", "이메일을 입력해야 합니다.")) return;
	if(!mailPatternChk("email")) return;

	document.getElementById("form").submit();
}