function checkAll(){
	let chkBox = document.getElementsByClassName("chkBox");
	alert(chkBox.length);
	alert(chkBox[0].value);
	let chkCnt = 0;

	for(let i = 0 ; i < chkBox.length ; ++i){
		if(chkBox[i].checked == true)
			chkCnt++;
	}

	if(chkCnt == chkBox.length){
		for(let i = 0 ; i < chkBox.length ; ++i)
			chkBox[i].checked = false;
	}
	else {
		for(let i = 0 ; i < chkBox.length ; ++i)
			chkBox[i].checked = true;
	}
}

function searchBoard(){
	let searchText = document.getElementById("searchText");
	// if(searchText.value != "")
	document.getElementById("searchForm").submit();
}