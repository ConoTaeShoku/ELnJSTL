<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보수정</title>
</head>
<body>
<h2>[회원 수정]</h2>

<form action="memberupdate" method="post">
	<table border="1">
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id" value="${loginM.id}" readonly/></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="password" value="${loginM.password}" /></td>		
		</tr>
		<tr>
			<th>이름</th>
			<td><input type="text" name="name" value="${loginM.name}" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정!!" />
				<input type="reset" value="처음상태로" />
			</td>
		</tr>
	</table>
</form>

<div>
<a href="${pageContext.request.contextPath}/">메인화면으로</a>
</div>

</body>
</html>