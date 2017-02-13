<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원검색</title>
</head>
<body>
<h2>[회원 검색]</h2>
<h3>개인 검색</h3>
<form action="selectOne" method="post">
	<table border="1">
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="검색!!" />
				<input type="reset" value="지우기" />
			</td>
		</tr>
	</table>
</form>

<h3>전체 검색</h3>
<form action="selectList" method="get">
	<input type="submit" value="전체출력">
</form>

</body>
</html>