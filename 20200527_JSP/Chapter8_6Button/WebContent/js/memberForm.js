function chkPass(pwParam, pwOkParam) {
	let pw = document.getElementById(pwParam);
	let pwOk = document.getElementById(pwOkParam);
	
	if(pw.value !=pwOk.value){
		alert("비밀번호가 잘못되었습니다.");
		pw.value="";
		pwOk.value="";
		pw.focus();
		return false;
	}
	return true;
}
function sendMember(){
	let txtFldArr =['id', 'pw', 'pwOk', 'authNum'];
	
	for(let idx in txtFldArr){
		if(!chkTxtFld(txtFldArr[idx], "필수 항목이 비어있습니다."))	return;
	}
	
	if( !chkPass(txtFldArr[1], txtFldArr[2]) ) return;
	
	document.getElementById('frm').submit();
}