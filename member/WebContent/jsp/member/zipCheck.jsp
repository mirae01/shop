<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<script type="text/javascript">
	function sendAddress(zipcode, sido, gugun, dong, ri, bunji) {
		var address = sido + " " + gugun + " " + dong + " " + ri + " " + bunji;
		opener.document.regForm.zipcode.value = zipcode;
		opener.document.regForm.address1.value = address;
		opener.document.regForm.address2.focus();
		self.close();
	}
</script>
</head>
<body>
	<center>
		<b>우편 번호 찾기</b>
		<form action="ZipcodeAction.action" method="post" name="zipForm">
			<table>
				<tr>
					<td>동 이름:<input type="text" name="dong" /> <input
						type="submit" value="검색" /> <c:if test="${check eq 'yes' }">
							<br />
							<font color="red">${fieldErrors.dong }</font>
						</c:if>
					</td>
				</tr>
			</table>
			<input type="hidden" name="check" value="yes" />
		</form>
		<table>
			<c:if test="${check eq 'yes' }">
				<c:if test="${result eq 0 }">
					<tr>
						<td align="center"><font color="red">검색된 결과가 없습니다.</font></td>
					</tr>
				</c:if>
				<c:if test="${result eq 1 }">
					<tr>
						<td align="center"><br /> <font color="blue"> ※ 아래
								우편번호를 클릭하면 자동으로 입력됩니다. </font></td>
					</tr>
					<c:forEach var="zipcodeVO" items="${zipcodeList }">
						<tr>
							<td><a href="javascript:sendAddress('${zipcodeVO.zipcode }', '${zipcodeVO.sido }', '${zipcodeVO.gugun }','${zipcodeVO.dong }', '${zipcodeVO.ri }','${zipcodeVO.bunji }')">
								${zipcodeVO.zipcode }&nbsp;
								${zipcodeVO.sido }&nbsp;
								${zipcodeVO.gugun }&nbsp;
								${zipcodeVO.dong }&nbsp;
								${zipcodeVO.ri }&nbsp;
								${zipcodeVO.bunji }
								</a>
							</td>
						</tr>
					</c:forEach>
				</c:if>
			</c:if>
			<tr>
				<td align="center">
					<a href="javascript:this.close();">닫기</a>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>



















