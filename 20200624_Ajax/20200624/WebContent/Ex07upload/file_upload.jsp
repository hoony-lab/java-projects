<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>
#attachList{
	width: 600px;
	height: 300px;
	border: 1px solid #aaa;
	
}
</style>

<script src='file_upload.js'></script>

</head>
<body>

<div id="upload">
	<h1>File Upload</h1>
	<form name="frm" id='frm' method='post' enctype="multipart/form-data">
		<p/>
		<label>작성자</label>
		<input type='text' name='id' value='hong'>
		<br>
		<label>첨부 이미지</label>
		<input type='file' name='attach' id='btnAttach' multiple='multiple'>
		
		<div id='attachList'></div>
		
		
		
		<input type='button' id='btnSend' value="전송" >
		
	</form>
</div>	

<script>
	// form tag, 첨부버튼, 전송버튼, 미리보기영역, 서버페이지
	upload.start('frm', 'btnAttach', 'btnSend', 'attachList', 'file_upload_result.jsp');
</script>

</body>
</html>