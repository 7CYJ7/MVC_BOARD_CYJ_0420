<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 내용 보기</title>
</head>
<body>
	<h2>글 내용 보기</h2>
	<hr>
	<table border="1" cellspacing="0" cellpadding="0" width="500">
		<form action="reply">
		<input type="hidden" name="bid" value="${content.bid }">
		<input type="hidden" name="bgroup" value="${content.bgroup }">
		<input type="hidden" name="bstep" value="${content.bstep }">
		<input type="hidden" name="bindent" value="${content.bindent }">
		<tr>
			<td>번 호</td>
			<td>${content.bid }</td>
		</tr>	
		<tr>
			<td>답변자</td>
			<td><input type="text" name="bname" size="60"></td>
		</tr>
		<tr>
			<td>제 목</td>
			<td><input type="text" name="btitle" value="[답변] ${content.btitle }" size="60"></td>
		</tr>
		<tr>
			<td>내 용</td>
			<td>
				<textarea rows="10" cols="45" name="bcontent">${content.bcontent }
-----------------------------------------
[답변]
				
				
				
				</textarea>
			</td>
		</tr>
		<tr>
			<td>등록일</td>
			<td>${content.bdate }</td>
		</tr>
		<tr>
			<td>조회수</td>
			<td>${content.bhit }</td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="submit" value="답변저장">
				<input type="button" value="글목록" onclick="script:window.location.href='list'">
			</td>
		</tr>
		</form>
	</table>
</body>
</html>