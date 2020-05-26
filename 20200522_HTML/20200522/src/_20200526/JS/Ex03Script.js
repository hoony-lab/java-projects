function main() {
	let thumbImg = document.getElementsByClassName("thumb");
	for (let i = 0; i < thumbImg.length; i++) {
		thumbImg[i].addEventListener('click', LightBoxOpen);
	}
	let btnClose = document.querySelector('.btnClose');
	btnClose.addEventListener('click', LightBoxClose);
}
function LightBoxOpen(event) {
	imgChange(event);

	let lightBox = document.querySelector('#lightBox');
	lightBox.setAttribute('class', 'active');

	let block = document.querySelector('#block');
	block.setAttribute('class', 'active');
}
function LightBoxClose() {
	let lightBox = document.querySelector('#lightBox');
	lightBox.removeAttribute('class');

	let block = document.querySelector('#block');
	block.removeAttribute('class');
}
function getImage() {
	let figure = document.querySelector('figure');
	return figure.children;
}
function initImage(img) {
	for (let i = 0; i < img.length; i++) {
		img[i].removeAttribute('class');
	}
}
function imgChange(event) {
	let img = getImage();
	let idx = event.target.id - 1;
	initImage(img);
	img[idx].setAttribute('class', 'active');

	setCarName(idx);
	setCarInfo(idx);
}

function setCarInfo(idx) {
	let carNameArr = [
		"어큐리 NSX GT3",
		"포르쉐 911 GT2 RS 클럽에디션",
		"람보르기니 SC18 콘셉트"
	];

	let carName = document.querySelector('#carName');
	carName.innerHTML = carNameArr[idx];
}

function setCarName(idx) {
	let carDataArr = [
		['GT3', '3501cc', '정보없음', '정보없음', '465,000유로'],
		['3.8가솔린', '3800cc', '700hp', '11.8l/100km', '가격정보없음'],
		['SC18', '6,498cc', '770hp', '정보없음', '가격정보없음']
	];

	modelName.innerHTML = carDataArr[idx][0];
	displacement.innerHTML = carDataArr[idx][1];
	maxOutput.innerHTML = carDataArr[idx][2];
	mileage.innerHTML = carDataArr[idx][3];
	price.innerHTML = carDataArr[idx][4];
}