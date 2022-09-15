<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		width: 500px;
		background-color: pink;
	}
	
</style>

</head>
<body>
	<div align="center">
		<div>
			<h1>멤버 전체 목록</h1>
		</div>
		<div>
			<table border="1">
				<tr>
					<th width="150" align="center">아이디</th>
					<th width="150" align="center">이름</th>
					<th width="150" align="center">전화번호</th>
					<th width="150" align="center">권한</th>
				</tr>
				<!-- Servlet 페이지의 members에 리스트 배열이 담겨있고 한행을 m 으로 읽겠다. -->
				<c:forEach items="${members }" var="m">
					<tr onMouseover= "this.style.backgroundColor='yellow';"
						onMouseout="this.style.backgroundColor='pink';"
						onclick="selectMember('${m.memberId }')">
			
						<td>${m.memberId }</td>
						<td>${m.memberName }</td>
						<td>${m.memberTel }</td>
						<td>${m.memberAuthor }</td>
					</tr>
				</c:forEach>
			</table>
		</div><br>
		<div>
			<button type="button" onclick="location.href='memberJoinForm.do'">멤버추가</button>&nbsp;&nbsp;
			<button type="button" onclick="location.href='main.do'">홈</button>
		</div>
	</div>
	<div>
		<form id="frm" action="MemberSelect" method="post">
			<input type="hidden" id="id" name="id">
		</form>
	</div>
	<script type="text/javascript">
		function selectMember(id) { 
			frm.id.value = id;
			frm.action = "memberSelect.do";
			frm.submit();
		}
	
	</script>
</body>
</html>