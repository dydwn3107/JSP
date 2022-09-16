<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>멤버 상세 정보</h1>
		</div>
		<form id="frm" method="post">
			<div>

				<table border="1">
					<tr>
						<th width="120">아이디</th>
						<td width="200"><input type="text" id="memberId"
							name="memberId" value="${m.memberId }" readonly="readonly"></td>

					</tr>
					<tr>
						<th>패스워드</th>
						<td><input type="password" id="memberPassword"
							name="memberPassword" value="${m.memberPassword }"></td>
					</tr>
					<tr>
						<th>이 름</th>
						<td><input type="text" id="memberName" name="memberName"
							value="${m.memberName }"></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="tel" id="memberTel" name="memberTel"
							value="${m.memberTel }"></td>
					</tr>
					<tr>
						<th>권 한</th>
						<td><input type="text" id="memberAuthor" name="memberAuthor"
							value="${m.memberAuthor }"></td>
					</tr>
				</table>
			</div>
			<br>

			<div>
				<button type="button" onclick="actionFrom('E')">수정</button>
				&nbsp;&nbsp;
				<button type="button" onclick="actionFrom('D')">삭제</button>
				&nbsp;&nbsp;
				<button type="button" onclick="actionFrom('L')">목록</button>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		function actionFrom(str) {
			switch (str) {
			case 'E':
				frm.action = "memberEdit.do";
				frm.submit();
				break;
			case 'D':
				frm.action = "memberDelete.do";
				frm.submit();
				break;
			default:
				location.href = "memberSelectList.do";
			}
		}
	</script>
</body>
</html>