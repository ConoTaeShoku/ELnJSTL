<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>회원가입</title>
</head>
<body>
<h2>[회원 가입]</h2>
<form action="join" method="post">
	<table>
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id" /></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="password" /></td>		
		</tr>
		<tr>
			<th>이름</th>
			<td><input type="text" name="name" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="등록!!" />
				<input type="reset" value="지우기" />				
			</td>
		</tr>
	</table>
</form>
<div>
	<a href="${pageContext.request.contextPath}/">메인화면으로</a>
</div>
</body>
</html>