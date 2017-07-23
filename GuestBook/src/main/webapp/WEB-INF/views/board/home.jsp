<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>home</title>	
</head>
<body>
<div>
<c:if test="${not empty result}">
	<c:choose>
		<c:when test="${result=='0'}">
			실패
		</c:when>
		<c:when test="${result=='1'}">
			성공
		</c:when>
	</c:choose>
</c:if>
</div>
<table align="center" width="80%">
	<tr>
		<th bgcolor="#FAEBD7">번호</th>
		<th bgcolor="#FAEBD7">작성자 이름</th>
		<th bgcolor="#FAEBD7">글내용</th>
		<th bgcolor="#FAEBD7">작성 날짜와 시간</th>
	</tr>
	<c:if test="${empty gbList}">
		<tr>
			<th colspan="5"> <font color="DeepPink">아직 등록된 글이 없어요~</font> </th>
		</tr>
	</c:if>
	<c:if test="${not empty gbList}">
		<c:set var="n" value="${end}" />
			<c:forEach var="gb" items="${gbList}" varStatus="stat">
				<tr>
					<td>${n}</td>
					<td>${gb.name}</td>
					<td><a href="readOne?bnum=${gb.num}">${gb.content}</a></td>
					<td>${gb.inputdate}</td>
				</tr>
				<c:set var="n" value="${n-1}" />
			</c:forEach>
	</c:if>
</table>
<div align="center">
	<a href="${pageContext.request.contextPath}/fpage">◀◀</a>&nbsp;
	<a href="${pageContext.request.contextPath}/mpage">◀</a>&nbsp;
	<c:forEach var="i" begin="1" end="${tot}" step="1">
		<a href="setpge?pg=${i}">${i}</a>&nbsp;
	</c:forEach>
	<a href="${pageContext.request.contextPath}/ppage">▶</a>&nbsp;
	<a href="${pageContext.request.contextPath}/lpage">▶▶</a>&nbsp;
</div>
<div>
	<p><a href="${pageContext.request.contextPath}/writeForm">글쓰기!</a></p>
	<p><a href="${pageContext.request.contextPath}/">메인으로 돌아가기</a></p>
</div>
</body>
</html>