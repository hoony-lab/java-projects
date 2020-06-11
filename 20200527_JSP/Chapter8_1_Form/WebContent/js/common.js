function chkTxtFld(txtFld, msg){
	var id = document.getElementById(txtFld);
	if(id.value==""){
		alert(msg);
		id.focus();
		return false;
	}
	return true;
}