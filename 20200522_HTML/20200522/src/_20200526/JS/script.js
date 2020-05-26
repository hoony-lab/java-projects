function main(){
	let thumbImg = document.getElementsByClassName("thumb");
	for(let i=0;i<thumbImg.length;i++){
		thumbImg[i].addEventListener('click', LightBoxOpen);
	}
	let btnClose = document.querySelector('.btnClose');
	btnClose.addEventListener('click', LightBoxClose);
	
	let btnIndicator = document.querySelector(".indicator");
	for(let i=0;i<btnIndicator.children.length;i++){
		btnIndicator.children[i].addEventListener('click', imgChange);
	}
}
function imgChange(event){
	let img = getImage();
	initImage(img);
	img[event.target.id-1].setAttribute('class', 'active');
	
	setCarInfo(event.target.id-1);
}

function LightBoxOpen(event){
	imgChange(event);
	let lightBox = document.querySelector('#lightBox');
	let block = document.querySelector('#block');
	
	lightBox.setAttribute('class', 'active');
	block.setAttribute('class', 'active');
}
function LightBoxClose(){
	let lightBox = document.querySelector('#lightBox');
	let block = document.querySelector('#block');
	
	lightBox.removeAttribute('class');
	block.removeAttribute('class');
}
function getImage(){
	let figure = document.querySelector('figure');
	return figure.children;
}
function initImage(img){
	for(let i=0;i<img.length;i++){
		img[i].removeAttribute('class');
	}
}

function setCarInfo(carNumber){
	let carDataArr = [
		["어큐리 NSX GT3","포르쉐 911 GT2 RS 클럽에디션", "람보르기니 SC18 콘셉트"],
		['GT3', '3501cc', '정보없음', '정보없음', '465,000유로'],
		['3.8가솔린', '3800cc', '700hp', '11.8l/100km', '가격정보없음'],
		['SC18', '6,498cc', '770hp', '정보없음', '가격정보없음']
	];
	let lightBox = document.querySelector('#lightBox');
	let h1 = lightBox.children[0];
	let table = lightBox.children[2];
	
	h1.innerHTML = carDataArr[0][carNumber];
	for(let i=0;i<5;i++)
		table.rows[1].cells[i].innerHTML = carDataArr[carNumber+1][i];
}
