<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Registration Form</title>
<script type="text/javascript" src="../js/script.js"></script>
</head>
<body>
	<center>
		<form action="RegValidationAction.action" method="post" name="regForm">
			<input type="hidden" name="check" value="${check }" />
			<table border="1">
				<tr>
					<td>회원 가입 정보 입력</td>
				</tr>
				<tr>
					<td align="right">아이디</td>
					<td align="left"><input type="text" name="userId"
						value="${userId }" readonly="readonly" /> <input type="button"
						value="중복확인" onclick="idCheck()" /> <c:if test="${not check }">
							<br />
							<font color="red">${fieldErrors.userId }</font>
							<font color="red">${fieldErrors.idCheck }</font>
						</c:if></td>
				</tr>
				<tr>
					<td align="right">비밀번호</td>
					<td align="left"><input type="password" name="userPW"
						value="${userPW }" /> <br /> <font color="red">${fieldError.reUserPW }</font></td>
				</tr>
				<tr>
					<td align="right">비밀번호 확인</td>
					<td align="left"><input type="password" name="reUserPW"
						value="${userPW }" /> <br /> <font color="red">${fieldErrors.reUserPW }</font></td>
				</tr>
				<tr>
					<td align="right">이름</td>
					<td align="left"><input type="text" name="userName"
						value="${userName }" /> <br /> <font color="red">${fieldErrors.userName }</font></td>
				</tr>
				<tr>
					<td align="right">전화번호</td>
					<td align="left"><select name="phone1">
							<option value="02">02</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
					</select> - <input type="text" name="phone2" size="5" value="${phone2 }" />
						<input type="text" name="phone3" size="5" value="${phone3 }" /> <br />
						<font color="red">${fieldError.phone }</font></td>
				</tr>
				<tr>
					<td align="right">이메일</td>
					<td align="left"><input type="text" name="email"
						value="${email }" /> <br />
					<font color="red">${fieldErrors.email }</font></td>
				</tr>
				<tr>
					<td align="right">우편번호</td>
					<td align="left"><input type="text" name="zipcode"
						value="${zipcode }" /> <input type="button" value="찾기"
						onclick="zipCheck()" /> <br /> <font color="red">${fieldErrors.zipcode }</font></td>
				</tr>
				<tr>
					<td align="right">주소1</td>
					<td align="left"><input type="text" name="address1" size="50"
						value="${address1 }" /> <br /> <font color="red">${fieldError.address1 }</font></td>
				</tr>
				<tr>
					<td align="right">주소2</td>
					<td align="left"><input type="text" name="address2" size="30"
						value="${address2 }" /> <br /> <font color="red">${fieldError.address2 }</font></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="reset" value="다시입력" />&nbsp;&nbsp;
						<input type="submit" value="회원가입" /> <input type="button"
						value="취소" onclick="javascript:window.location='longin.jsp'" /></td>
				</tr>
			</table>
		</form>
	</center>

</body>
</html>























