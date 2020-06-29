<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h3>JSON TYPE</h3>
<script type="text/javascript">

//1) Map 구조 JSON
 var mnt = { "apple":"사과","banana":"바나나","melon":"메론" };
 
 console.table(mnt);
 
 console.log('apple:'+mnt.apple);
 console.log('banana:' + mnt.banana);
 console.log('melon:'+mnt.melon);


 //2) Array 구조 JSON
 
 var mnt = [ "백두산","지리산","한라산","설악산" ];
 
 for(i=0; i<mnt.length; i++){
	 console.log(mnt[i]);
 }
 
 //3) 혼합형(Array in Map) 구조 JSON
 var data = { "serial":"100" , "subject":"요청하신 자료입니다.",
		 	  "mdate" : "2020-06-24" , "mid" : "홍길동",
		 	  "attfile" : ["a.png","b.png","c.png"]
		 	}
 
 console.log("게시물번호 : "+data.serial);
 console.log("제목 : "+data.subject);
 console.log("작성일 : "+data.mdate);
 console.log("작성자 : "+data.mid);
 console.log("첨부파일");
 for(var i=0; i<data.attfile.length; i++){
	 	console.log(data.attfile[i]);
 }
 
</script>