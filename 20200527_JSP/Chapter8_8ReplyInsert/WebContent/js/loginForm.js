function loginProc(){
	let txtFldArr =['id', 'pw'];
	
	for(let idx in txtFldArr){
		if(!chkTxtFld(txtFldArr[idx], "필수 항목이 비어있습니다."))	return;
	}
		
	document.getElementById('frm').submit();
}