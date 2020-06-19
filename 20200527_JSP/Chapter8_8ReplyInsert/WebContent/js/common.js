function chkTxtFld(txtFld, msg) {
	let id = document.getElementById(txtFld);
	if(id.value==""){
		alert(msg);
		id.focus();
		return false;
	}
	return true;
}