<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
<title>����3</title>
<script>
	function tagDisplay() {

		var source = document.form.editor.value;
		win = window.open("", "", "width=500,height=600");
		win.document.write("<title>YOLO</title>�� �κп� ���ϴ� �±׸� �Է��ϼ���");

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
			<input type="button" value="���������� ��� ����" onClick="tagDisplay()">
			<input type="reset" value="���ø����� ���� �ۼ�"> <input type="button"
				value="ó������ ���� �����" onClick="tagClear()">
		</p>
		<textarea cols="60" name="editor" rows="15"
			style="background-color: lightyellow" spellcheck="no">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&nbsp;&lt;head&gt;
&nbsp;&nbsp;&lt;title&gt; �����Է� &lt;/title&gt;
&nbsp;&lt;/head&gt;
&nbsp;&lt;body&gt;
&nbsp;&nbsp;&nbsp; �� �κп� ���ϴ� �±׸� �Է��ϼ���
&nbsp;&lt;/body&gt;   
&lt;/html&gt;
     </textarea>
	</form>
</body>

</html>