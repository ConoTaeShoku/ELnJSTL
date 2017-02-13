<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>
<body>

<h1>[ 로그인 ]</h1>

<form method="post">
<table>
	<tr>
		<th>아이디</th>
		<td><input type="text" name="id" id="id" placeholder="ID 입력"/></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="password" name="password" id="password" placeholder="password 입력" /></td>
	</tr>
	<tr>
		<th colspan="2">
			<input type="submit" formaction="login" value="로그인">
			<input type="reset" value="다시 쓰기">
		</th>
	</tr>
</table>
</form>

<div>
<a href="${pageContext.request.contextPath}/">메인화면으로</a>
</div>
</body>
</html>