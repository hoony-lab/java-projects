//// file upload library
//
////(function(){
////	var yesss;
////})()
//
//$id = function(id) {return document.getElementById(id)}
//
//// https://webclub.tistory.com/390
//// var obj = new Object();
//var upload = {};		// 리터럴 객체
//
//upload.start = function(frm, chooseID, sendID, apZone, url){
//	var sendForm = $id(frm);
//	var btnChooseID = $id(chooseID);
//	var btnSendID = $id(sendID);
//	var appendZone = $id(apZone);
//	var sendURL = url;
//	
//	var sel_files = [];	//선택된 파일만 저장
//	
//	btnChooseID.onchange = function(e){
//		var files =  e.target.files;
//		for(f of files){
//			console.log(f.name);
//			upload.imageLoader(f, appendZone);
//		}
//	}
//	
//	appendZone.addEventListener('dragenter', function(e){
//		e.preventDefault();
//		e.stopPropagation();
//		
//	}, false);
//	
//	appendZone.addEventListener('dragover', function(e){
//		e.preventDefault();
//		e.stopPropagation();
//	}, false);
//	
//	appendZone.addEventListener('drop', function(e){
//		e.preventDefault();
//		e.stopPropagation();
//		
//		var dt = e.dataTransfer;
//		var files = dt.files;
//		for(f of files){
//			upload.imageLoader(f, appendZone);
//		}
//	}, false);
//	
//	
//	
//	btnSendID.onclick = function(){
//		btnChooseID.value = "";
//		var data = new FormData(sendForm);
//		var uploadChk = document.getElementByClassName('upload_chk');
//		
//		for(var i = 0 ; i < sel_files.length ; ++i){
//			if(uploadChk[i].checked){
//				var name = 'image_';
//				data.append(name, sel_files[i]);
//			}
//		}
//		
//		//ajax를 통해 전송
//		var xhr = new XMLHttpRequest();
//		xhr.open('post', sendURL);
//		xhr.send();
//		xhr.onreadystatechange = function(){
//			if(xhr.status == 200 && xhr.readyState == 4){
//				alert(xhr.responseText);
//			}
//		}
//	}
//	
//}
//
//upload.imageLoader = function(f, appendZone){
//	sel_files.push(f);
//	
//	var reader = new FileReader();
//	
//	// fileReader객체가 지정된 파일을 모두 읽은 경우
//	reader.onload = function(e){
//		let img = document.createElement('img');
//		img.setAttribute('style', 'width: 180px; height:150px;');
//		img.src = e.target.result;
//		img.ondblclick = function(e){
////			img.src = "";
//			img.remove();
//		}
//		img.ondrag = function(e){
//			
//		}
//		
//		appendZone.append(img_div(img));	
//	}
//	reader.readAsDataURL(f);
//	
//	
//	
//}
//
//
//
//img_div = function(img){
//	var div = document.createElement('div');
//	
//	// inline-block 은 span 태그와 비슷한 효과
//	div.setAttribute('style', 'display: inline-block; position: relative;');
//	
//	var btn = document.createElement('input');
//	btn.setAttribute('type', 'checkBox');
//	btn.setAttribute('class', 'upload_chk');
//	btn.setAttribute('checked', 'checked');
//	btn.setAttribute('style', 'position: absolute; bottom: 5px; right:2px; width: 20px; opacity: 0.7;');
//	
//	div.appendChild(img);
//	div.appendChild(btn);
//	
//	return div;
//}


// fileUpload library 
// ( form tag, attach button, submit , review area<A.K.A attachLst> , Server Page ) 


var upload = {}; // 리터럴 객체
$id = function (id) { return document.getElementById(id); }

upload.start  = function (frm, chooseID, sendID, apZone, URL) {   
   var sendForm = $id(frm);
   var btnChooseID = $id(chooseID);
   var btnSendID = $id(sendID);
   var appendZone = $id(apZone);
   var sendURL = URL;
   var sel_files = [];
   
   btnChooseID.onchange = function(e) {
      var files = e.target.files;
      for(f of files){
         upload.imageLoader(f, appendZone);
      }
   }
   
   appendZone.addEventListener('dragenter', function (e) {
      
      // 두 개념이 비슷함
      e.preventDefault();
      e.stopPropagation();
   },false);
   
   appendZone.addEventListener('dragover', function (e) {
      
      // 두 개념이 비슷함
      e.preventDefault();
      e.stopPropagation();
   },false);
   
   
   appendZone.addEventListener('drop', function (e) {
      
      // 두 개념이 비슷함
      e.preventDefault();
      e.stopPropagation();
      
      var dt  = e.dataTransfer;
      var file = dt.files;
      
      for(f of file){
         upload.imageLoader(f, appendZone);
      }
      
   },false);
   
   btnSendID.onclick = function() {
      btnChooseID.value = '';
      // enctype 이 존재 해야 가능.
      var data = new FormData(sendForm);
      var uploadChk = document.getElementsByClassName('upload_chk');
      
      for(var i=0; i<sel_files.length; i++){
         if(uploadChk[i].checked){
            var eName = 'image_';
            data.append(eName, sel_files[i]);
         }
      }
      // ajax 를 통해 전송
      var xhr = new XMLHttpRequest();
      xhr.open('POST', sendURL);
      xhr.send(data);
      xhr.onreadystatechange = function() {
         if(xhr.status == 200 && xhr.readyState == 4){
            alert(xhr.responseText);
         }
            
      }
   }   
}   

upload.imageLoader = function(f, appendZone) {
   //console.log('chk');
   var reader = new FileReader();
   // file 로딩이 끝나면 -> FileReader 객체가 지정된 파일을 모두 읽은 경우
   // onload 라는 이벤트 발생
   
   
   //  e -> onload
   reader.onload = function(e){
      //console.log('chk2');
      let img = document.createElement('img');
      img.setAttribute('style','width:200px; height:180px');
      img.src = e.target.result;
		img.ondblclick = function(e){
//			img.src = "";
			img.remove();
		}
		img.ondrag = function(e){
			}
      appendZone.append(img_div(img));
   }
   reader.readAsDataURL(f);
}


img_div = function(img) {
   
   var div = document.createElement('div');
   var divStyle = 'display : inline-block; '+
                'position:relative';
   
   var btnStyle = 'right :7px; '+
               'bottom : 7px;'+
               'width:20px;'+
               'opacity:.7'
                'position:absolute';
   
   div.setAttribute('style',divStyle);
   
   var chkBtn = document.createElement('input');
   
   chkBtn.setAttribute('type','checkBox');
   chkBtn.setAttribute('class','upload_chk');
   chkBtn.setAttribute('checked','checked');
   chkBtn.setAttribute('style',btnStyle);
   
   div.appendChild(img);
   div.appendChild(chkBtn);
   
   return div;
}
