<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<table>
	<tr>
		<td>작성자 :</td>
		<td><input type="text" name="writer"></td>
	</tr>

	<tr>
		<td>제목&nbsp;&nbsp;&nbsp;&nbsp;:</td>
		<td><input type="text" name="title"></td>
	</tr>

	<tr>
		<td>내용&nbsp;&nbsp;&nbsp;&nbsp;:</td>
		<td><textarea rows="10" cols="60" id="story" name="story"
				style="overflow-y: scroll;"></textarea></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="submit" value="작성"></td>
	</tr>

</table>