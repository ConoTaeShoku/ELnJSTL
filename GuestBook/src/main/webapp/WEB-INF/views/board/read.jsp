<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>read</title>
<style>
table, th {
    text-align: center;
	vertical-align: center;
}
</style>
</head>
<body>

<h2>[방명록 보기]</h2>

<form id="read" method="post">

<div align="center">
	<table  width="80%" border="1">
	<tr>
		<th bgcolor="#FAEBD7">글 번호</th>
		<td><input type="text" name="num" id="num" style="width:98%;" value="${gb.num}" readonly /></td>
	</tr>
	<tr>
		<th bgcolor="#FAEBD7">작성자 이름</th>
		<td><input type="text" name="name" id="name" style="width:98%;" value="${gb.name}" readonly /></td>
	</tr>
	<tr>
		<th bgcolor="#FAEBD7">작성자 비밀번호</th>
		<td><input type="password" name="password" id="password" style="width:98%;" value="${gb.password}" readonly /></td>
	</tr>
	<tr>
		<th bgcolor="#FAEBD7">글 내용</th>
		<td>
			<textarea rows=5 name="content" id="content" style="width:98%;" readonly>${gb.content}</textarea>
		</td>
	</tr>
</table>
</div><br>

<c:if test="${loginM.id == gb.name }">
	<div align="center">	
		<input type=submit formaction="${pageContext.request.contextPath}/updateForm?bnum=${gb.num}" value='수정' />
		<input type=submit formaction="${pageContext.request.contextPath}/delete?bnum=${gb.num}" value='삭제' /></td>
	</div>
</c:if>
	
</form><br><br>
<div align="right">
	<a href="${pageContext.request.contextPath}/home" >목록으로!</a>
</div>

</body>
</html>