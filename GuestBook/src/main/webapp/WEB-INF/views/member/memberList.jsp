<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>전체 검색 결과</title>
</head>
<body>
<h2>[전체 회원 검색]</h2>
<c:if test="${empty mList}">
	등록된 회원이 없습니다!<br>
</c:if>
<c:if test="${not empty mList}">
	<table>
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>비번</th>
			<th>이름</th>
		</tr>
		<c:forEach var="item" items="${mList}" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${item.id}</td>
				<td>${item.password}</td>
				<td>${item.name}</td>
			</tr>
		</c:forEach>
	</table>
</c:if>
<div>
	<a href="${pageContext.request.contextPath}/">메인화면으로</a>
</div>
</body>
</html>