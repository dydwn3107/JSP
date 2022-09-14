<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/menu.css">
</head>
<body>
	<nav id="topMenu">
		<ul>
			<li><a class="menuLink" href="#">About us</a></li>
			<li><a class="menuLink" href="#">Ministries</a></li>
			<li><a class="menuLink" href="#">Demo</a></li>
			<li><a class="menuLink" href="#">Board</a></li>
			<li><a class="menuLink" href="#">Content</a></li>
			<c:choose>
				<c:when test="${author eq 'ADMIN' }">
					<li><a class="menuLink" href="#">관리자</a></li>
				</c:when>
				<c:otherwise>
					<li><a class="menuLink" href="#">일반유저</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</nav>
</body>
</html>