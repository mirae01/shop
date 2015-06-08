<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Id Check</title>
<script type="text/javascript">
	function select(checkValue) {
		var userId = document.idCheckForm.userId.value;
		opener.document.regForm.userId.value = userId;
		opener.document.regForm.check.value = checkValue;
		self.close();
	}
</script>
</head>
<body>
<center>
	<form action="IDCheckAction.action" method="post" name="idCheckForm">
		<table border="1">
			<tr>
				<td align="left">아이디를 입력해 주세요.</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="userId" value="${userId }"/>
					<input type="submit" value="확인"/>
				</td>
			</tr>
			<tr>
				<td>
					<c:if test="${check == true }">
						<font color="blue">${fieldErrors.idCheckSuccess }</font>
						<a href="javascript:select(true)">적용하기</a>
					</c:if>
					<c:if test="${check == false }">
					<font color="red">${fieldErrors.idCheckError }</font>
					<font color="red">${fieldErrors.userId }</font>
					</c:if>
				</td>
			</tr>
			
		</table>
	</form>
</center>
</body>
</html>