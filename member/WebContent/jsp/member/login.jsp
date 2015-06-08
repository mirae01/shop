<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<center>
		<c:if test="${session.userId eq null }">
			<form method="post" action="LoginAction.action">
				<table width="300" border="1">
					<tr>
						<td colspan="2" align="center">회원 로그인</td>
					</tr>
					<tr>
						<td width="100" align="right">아이디</td>
						<td width="200">&nbsp;&nbsp;<input type="text" name="userId"
							size="20" /></td>
					</tr>
					<tr>
						<td colspan="2"><font color="red">${fieldErrors.userId }</font>
							<font color="red">${fieldErrors.idError }</font></td>
					</tr>
					<tr>
						<td width="100" align="right">비밀번호</td>
						<td width="200">&nbsp;&nbsp; <input type="password"
							name="userPW" size="20" />
						</td>
					</tr>
					<tr>
						<td colspan="2"><font color="red">${fieldError.userPW }</font>
							<font color="red">${fieldError.passError }</font></td>
					</tr>
					<tr>
						<td colspan="2" align="right"><input type="button"
							value="회원가입"
							onclick="javascript:window.location='RegActionForm.action'" />
							&nbsp;&nbsp; <input type="submit" value="로그인" /></td>
					</tr>
				</table>
			</form>
		</c:if>
		<c:if test="${session.userId ne null }">
			<table width="300" border="1">
				<tr>
					<td colspan="3" align="center">
						<h2>&{userId}님 환영합니다.</h2>
					</td>
				</tr>
				<tr>
					<td width="100" align="center"><input type="button"
						value="정보수정"
						onclick="javascript:winsow.location='ModifyAction.action'" /></td>
				</tr>
				<tr>
					<td width="100" align="center"><input type="button"
						value="회원탈퇴"
						onclick="javascript:winsow.location='DeleteFormAction.action'" />
					</td>
				</tr>
				<tr>
					<td width="100" align="center"><input type="button"
						value="로그아웃"
						onclick="javascript:winsow.location='LogoutAction.action'" /></td>
				</tr>
			</table>
		</c:if>
	</center>
</body>
</html>