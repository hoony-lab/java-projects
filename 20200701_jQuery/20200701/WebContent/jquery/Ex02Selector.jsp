<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
   integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
   crossorigin="anonymous"></script>
<script>
   //  기본 골격
   // window.onload 처럼 document 준비가 끝나면 실행 되는 func
$(document).ready(function() {
   // 모든 div 에 외곽선 jquery 를 이용한 css 스타일 적용
   $("div").css("border","2px solid #6495ED");
   $("#s1>div").css("background-color","#ADD8E6");
   
   $("#s2>.sp1").css("color","#1E90FF");
   
   $("#s3>input[type=text]").css("background-color","#00BFFF");
   $("#s3>input[type=password]").css("background-color","#E0FFFF");
});   

</script>
<meta charset="UTF-8">
<title>JQuery Test</title>
</head>


<body>


<h2>jquery selector test</h2>

<%-- div1 --%>
<div id="s1">
   <p>P1</p>
   <div>DIV1</div>
</div>

<br/>

<%-- div2 --%>
<div id="s2">
   <span class="sp1"> <b>span1</b> </span>
   <span class="sp2"> <b>span2</b> </span>
   <span class="sp3"> <b>span3</b> </span>
</div>

<br/>

<%-- div3 --%>
<div id="s3" style="height: 40px;">
   <input type="text" id="usrId" value="park">
   <input type="password" id="pw" value="0000">
   
</div>




</body>
</html>