/* boardFrom.js */

function formSubmit(path, curPage){
	let frm = document.getElementById('frm');
	frm.action = path;
	frm.curPage.value = curPage;
	
	frm.submit();
}
function checkAll(checkBoxTitle, checkBoxTitleAll){
	let checkboxs = document.getElementsByName(checkBoxTitle);
	let checkboxall = document.getElementsByName(checkBoxTitleAll);

	for(let i=0;i<checkboxs.length;i++)
		checkboxs[i].checked = checkboxall[0].checked;

	for(let attr in checkboxs)
		checkboxs[attr].checked = checkboxall.checked;

	for(let checkbox of checkboxs)
		checkbox.checked = checkboxall.checked;

	checkboxs.forEach(
		function(item){
			item.checked = checkboxall.checked;
		}
	)

	checkboxs.forEach(item=>{
			item.checked = checkboxall.checked;
		}
	)
}










