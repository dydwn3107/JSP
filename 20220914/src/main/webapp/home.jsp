<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% request.setCharacterEncoding("utf-8");
	  
	%> 
	<h1>넘어온 id 데이터는 = ${param.id} </h1>
	<c:if test="${not empty param.name}">
		<h1>넘어온 name 데이터는 = ${param.name} </h1>
	</c:if>
	<h1>넘어온 password 데이터는 = ${param.password}</h1>
	
	<c:forEach var="i" begin="1" end="10">
		2 * ${i} = ${2* i}<br/>  <!-- for문 -->
	</c:forEach>
	
	<c:choose>
		<c:when test="${empty param.id}">
			<h3>아이디 값이 비어있다.</h3>
		</c:when>
		<c:when test="${empty param.name}">
			<h3>이름 값이 비어있다.</h3>
		</c:when>
		<c:when test="${empty param.password}">
			<h3>패스워드 값이 비어있다.</h3>
		</c:when>
		<c:otherwise>
			<h3>정상동작 되었다.</h3>
		</c:otherwise>
	</c:choose>

</body>
</html>