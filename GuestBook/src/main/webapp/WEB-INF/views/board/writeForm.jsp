<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>writeForm</title>
</head>
<body>

<h2>[방명록]</h2>

<form action="insert" method="post">
<table  width="40%" border="1">
	<tr>
		<th bgcolor="#FAEBD7">작성자 이름</th>
		<td><input type="text" name="name" id="name" style="width:98%;" value="${loginM.name}" readonly /></td>
	</tr>
	<tr>
		<th bgcolor="#FAEBD7">비밀번호</th>
		<td><input type="text" name="password" id="password" style="width:98%;" value="${loginM.password}" readonly /></td>
	</tr>
	<tr>
		<th bgcolor="#FAEBD7">글 내용</th>
		<td>
			<textarea rows=5 name="content" id="content" style="width:98%;" ></textarea>
		</td>
	</tr>
</table> <br><br>
<div align="center">
	<input type="submit" value="등록" />
	<input type="reset" value="초기화" />
</div>
</form>

<div align="right">
	<a href="${pageContext.request.contextPath}/home">home으로 돌아가기</a>
</div>

</body>
</html>