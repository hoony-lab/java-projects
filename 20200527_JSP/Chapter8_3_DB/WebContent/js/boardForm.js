function checkAll() {
	var allChkBox = document.getElementById("allChkBox");
	var chkBox = document.getElementsByName("chkBox");
	let chkCnt = 0;

	for (let box in chkBox) {
		if (box.checked == true) {
			chkCnt++;
		}
	}

	if (allChkBox.checked == false) {
		for (let i = 0; i < chkBox.length; ++i) {
			chkBox[i].checked = false;
		}
	}
	else {
		for (let i = 0; i < chkBox.length; ++i) {
			chkBox[i].checked = true;
		}
	}



	// var checkboxs = document.getElementsByName(checkboxName);
	// var checkboxAll = document.getElementsByName(checkboxAllName);

	// for (let i = 0; i < checkboxs.length; i++)
	// 	checkboxs[i].checked = true;
	// checkboxs.forEach(
	// 	function (item) {
	// 		item.checked = true;
	// 	}
	// )
	// checkboxs.forEach(item => { item.checked = true; })
	// for (let attr in checkboxs) {
	// 	checkboxs[attr].checked = false;
	// }
	// for (let checkbox of checkboxs)
	// 	checkbox.checked = true;

	// for (let checkbox of checkboxs)
	// 	checkbox.checked = checkboxAll.checked;




}

function searchBoard() {
	let searchText = document.getElementById("searchText");
	// if(searchText.value != "")
	document.getElementById("searchForm").submit();
}