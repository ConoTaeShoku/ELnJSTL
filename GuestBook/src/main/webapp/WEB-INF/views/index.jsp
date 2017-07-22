<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
<script>
function updateCheck() {
	var pw = prompt("비밀번호를 입력하세요");
	var rid = document.getElementById("loginId").value;
	var rpw = document.getElementById("loginPw").value;
	if (pw == rpw) {
		location.href = 'memberupdate';
	} else {
		alert('비밀번호가 틀렸습니다.');
	}
}
function deleteCheck() {
	var pw = prompt("비밀번호를 입력하세요");
	var rid = document.getElementById("loginId").value;
	var rpw = document.getElementById("loginPw").value;
	if (pw == rpw) {
		location.href = 'memberdelete';
	} else {
		alert('비밀번호가 틀렸습니다.');
	}
}
function adminCheck() {
	var rid = document.getElementById("loginId").value;
	var rpw = document.getElementById("loginPw").value;
	if (rid != 'admin') {
		alert('관리자 권한만 실행 가능합니다.');
	} else {
		var pw = prompt("관리자님, 비밀번호를 입력해주세요.");
		if (pw == rpw) {
			location.href = 'memberList';
		} else {
			alert('비밀번호가 틀렸습니다.');
		}
	}
}
</script>
</head>
<body>
<div>
	<c:if test="${!empty loginM}">
		<h3>${loginM.id}님 안녕하세요~</h3>
		<input type="hidden" id = "loginId" value="${loginM.id}" />
		<input type="hidden" id = "loginPw" value="${loginM.password}" />
	</c:if>
	<c:if test="${empty loginM}">
		<h3>Guest</h3>
	</c:if>
</div>
<div>
	<c:choose>
		<c:when test="${mresult==0}">
			<span style="color:red;"><c:out value="실패"/></span>
		</c:when>
		<c:when test="${mresult==1}">
			<span style="color:blue;"><c:out value="성공"/></span>
		</c:when>
	</c:choose>
</div>
	<h2>[ =^_^= ]</h2>
	<h3>회원 관리</h3>
	<ul>
		<li><a href="join">가입</a></li>
		<li><a href="login">로그인</a></li>
		<li><a href="logout">로그아웃</a></li>
		<li><a href="javascript:updateCheck();">내 계정 수정</a></li>
		<li><a href="javascript:deleteCheck();">탈퇴하기</a></li>
		<li><a href="membersearch">회원검색</a></li>
		<li><a href="javascript:adminCheck();">전체 회원목록</a></li>
	</ul>
	<h3>방명록 관리</h3>
	<ul>
		<li><a href="home">게시판으로~~~</a></li>
	</ul>
</body>
</html>