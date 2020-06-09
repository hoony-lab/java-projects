<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
<title>문제3</title>
<script>
	function tagDisplay() {

		var source = document.form.editor.value;
		win = window.open("", "", "width=500,height=600");
		win.document.write("<title>YOLO</title>이 부분에 원하는 태그를 입력하세요");

		return true;
	}

	function tagClear() {

		document.form.editor.value = "";

		return;
	}
</script>
</head>

<body>
	<form name="form">
		<p>
			<input type="button" value="웹브라우저로 결과 보기" onClick="tagDisplay()">
			<input type="reset" value="템플릿으로 새로 작성"> <input type="button"
				value="처음부터 새로 만들기" onClick="tagClear()">
		</p>
		<textarea cols="60" name="editor" rows="15"
			style="background-color: lightyellow" spellcheck="no">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&nbsp;&lt;head&gt;
&nbsp;&nbsp;&lt;title&gt; 제목입력 &lt;/title&gt;
&nbsp;&lt;/head&gt;
&nbsp;&lt;body&gt;
&nbsp;&nbsp;&nbsp; 이 부분에 원하는 태그를 입력하세요
&nbsp;&lt;/body&gt;   
&lt;/html&gt;
     </textarea>
	</form>
</body>

</html>