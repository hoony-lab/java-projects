<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
// 	$('#navbar').css({
// 		'display':	"inline-block"	
// 	})
	
   <%-- #wrap style --%>
   $('#wrap').css({
		'float'	:	'left',
      "width"      :   "160px",
      "margin"   :   "10px, auto"
   
   });
   
   <%-- .tabMenu style --%>
   $('.tabMenu').css({
      "background-color"    :   "#ADD8E6",
      "border"         :   "2px solid #00BFFF",
      "width"            :   "150px",
      "cursor"         :   "pointer",
      "padding"         :   "5px",
      "box-sizing"      :   "border-box"
   });
   
   <%-- .menu li style --%>
   $('.menu li').css({
      "width"            :   "150px",
      "list-style"      :   "none",
      "cursor"         :   "pointer",
      "background-color"   :   "#B0E0E6",
      "padding"         :   "5px",
      "box-sizing"      :   "border-box"
      
   });
   
   $('#contents').css({
	   'float'	:	'left'
   });
   
   
   
   $('#contents2').css({
	   'float'	:	'left'
   });
   
   
   
   $('.menu').css({
      "display"   :   "table"
   });
   
   $('.tab1, .tab2, .tab3').css({
      "margin-left"      :   "-40px",
      "display"         :   "none"
   });
   
   
   
   $('#m1').on('click',function(){
      $('.tab1').slideToggle(200);
      $('.tab2').slideUp(200);
      $('.tab3').slideUp(200);
   })
   $('#m2').on('click',function(){
      $('.tab2').slideToggle(200);
      $('.tab1').slideUp(200);
      $('.tab3').slideUp(200);
   })
   $('#m3').on('click',function(){
      $('.tab3').slideToggle(200);
      $('.tab2').slideUp(200);
      $('.tab1').slideUp(200);
   })

   $('#option1').on('click',function(){
		webLoad('effect_menu_sub1.jsp', '#contents');
   })
   
    $('#option2').on('click',function(){
		webLoad('effect_menu_sub2.jsp', '#contents2');
   }) 
   

});


function webLoad(url, content){
    var xhr = new XMLHttpRequest();
    
    xhr.open('GET', url);
    xhr.onreadystatechange = function() {
       if(xhr.status == 200 && xhr.readyState == 4){
          $(content).html(xhr.responseText);
          
          }   
    }
    xhr.send();
}
   
</script>
<style>


</style>
<meta charset="UTF-8">
<title>Effect Menu</title>
</head>
<body>
<div id="wrap"> 
   <h2>Effect Menu</h2>
   <nav id="navBar">
      <div id="menu1" class="menu" >
         <div id="m1" class="tabMenu">패션</div>
            <ul class="tab1">
               <li id="option1">상의</li>
               <li id="option2">하의</li>
               <li>신발</li>
               <li>가방</li>
            </ul>
         
      </div>
         
      <div id="menu2" class="menu">
         <div id="m2" class="tabMenu" >가구</div>
            <ul class="tab2">
               <li>책상</li>
               <li>스탠드</li>
               <li>의자</li>
            </ul>
         
      </div>
      
      <div id="menu3" class="menu">
         <div id="m3" class="tabMenu">전자제품</div>
            <ul class="tab3">
               <li>PC</li>
               <li>PC 주변기기</li>
               <li>이어폰</li>
               <li>휴대폰</li>
            </ul>
         
      </div>
   </nav>

</div>

<section id="contents">


</section>
<section id="contents2">


</section>

</body>
</html>