<%@page import="member.Member"%>
<%@page import="member.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html>
<head><meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>
<div class="w3-container">
<table class="w3-table-all">
<caption>회원정보확인[${sessionScope.nicname}</caption>
<tr><td>이메일</td><td>${m.email}</td></tr>
<tr><td>생년월일</td><td>${m.birthday}</td></tr>

<tr>
<td colspan="2" class="w3-center">
<a class="w3-button w3-black" href="${pageContext.request.contextPath}/member/memberUpdateForm">회원정보수정</a>
<a class="w3-button w3-black" href="${pageContext.request.contextPath}/member/memberDeleteForm">회원탈퇴</a>
<a class="w3-button w3-black" href="${pageContext.request.contextPath}/member/memberPassForm">비밀번호수정</a>
</td>
</tr>	




</table></div>
</body></html>