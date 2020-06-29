<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Auto Complete_자동 완성</title>
<style>
#suggest {
	width: 305px;
	margin-top: 4px;
}

#result {
	border: 1px solid #aaa;
	padding: 10px;
	box-sizing: border-box;
	width: 600px;
	height: 300px;
	margin-top: 4px;
}
</style>

</head>
<body>
	<h1>Auto Complete</h1>
	<div id='div'>
		<input type='text' size='30' id='findStr' /> <input type='button'
			value='search' id='btn' /> <br />
		<select size='10' id='suggest'></select>
	</div>
	<div id='result'></div>

	<script>
		$id = function(id) {
			return document.getElementById(id)
		}
		$id('findStr').onkeyup = function(event) {
			//눌러진 키가 enter인 경우만 함수 실행;
			var key = event.keyCode;
			console.log(key);
			if (key == 13) {
				findFunc();

			}

		}
		$id('btn').onlclick = findFunc;
		function findFunc() {
			var findStr = $id('findStr').value;
			var url = 'Ex06autoComplete_result.jsp?findStr=' + findStr;
			var xhr = new XMLHttpRequest();
			var sel = $id('suggest');//select box

			xhr.open('GET', url);
			xhr.onreadystatechange = function() {
				if (xhr.status == 200 && xhr.readyState == 4) {
					var data = JSON.parse(xhr.responseText);
					//select 상자에 있던 기존 자료를 모두 삭제
					sel.length = 0;
					//응답된 JSON 타입의 데이터를 select box에 표시
					for (var i = 0; i < data.length; i++) {
						select.options[i] = new Option(data[i]);
					}
				}
			}
			xhr.send();

		}
	</script>
</body>
</html>