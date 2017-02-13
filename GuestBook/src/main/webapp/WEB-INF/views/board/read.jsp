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
<script>
function updateCheck() {
	var path =document.getElementById("path").value;
	var num = document.getElementById("num").value;
	var loginid = document.getElementById("loginid").value;
	var id = document.getElementById("name").value;
	var rpw = document.getElementById("password").value;
	var pw = prompt(id+"님의 비밀번호를 입력하세요");
	if (pw == rpw) {
		location.href = path+'/updateForm?bnum='+num;
	} else {
		alert('비밀번호가 틀렸습니다.');
	}
	if (loginid == 'admin') {
		location.href = path+'/updateForm?bnum='+num;
	}
}
function deleteCheck() {
	var path =document.getElementById("path").value;
	var num = document.getElementById("num").value;
	var loginid = document.getElementById("loginid").value;
	var id = document.getElementById("name").value;
	var rpw = document.getElementById("password").value;
	var pw = prompt(id+"님의 비밀번호를 입력하세요");
	if (pw == rpw) {
		location.href =  path+'/delete?bnum='+num;
	} else {
		alert('비밀번호가 틀렸습니다.');
	}
	if (loginid == 'admin') {
		location.href =  path+'/delete?bnum='+num;
	}
}

</script>

</head>
<body>

<h2>[방명록 보기]</h2>

<form>
<input type="hidden" name="path" id="path" value="${pageContext.request.contextPath}" />
<input type="hidden" name="num" id="num" value="${gb.num}" />
<input type="hidden" name="loginid" id="loginid" value="${loginM.id}" />

<div align="center">
	<table  width="80%" border="1">
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

<div align="center">	
	<input type="button" value="수정" onclick="updateCheck()" />
	<input type="button" value="삭제" onclick="deleteCheck()" /> <br>
	<a href="${pageContext.request.contextPath}/home" >목록으로!</a>
</div>
</form>

<div align="left">	
</div>	

</body>
</html>