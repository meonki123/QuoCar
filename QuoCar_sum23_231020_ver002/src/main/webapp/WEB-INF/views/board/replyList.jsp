<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/쿼카얼굴.png">
<link rel="stylesheet" href="/css/common.css" />
<title>QuoCAR</title>
<style>
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	
</script>
</head>
<body>
	<table>
		<c:forEach var="row" items="${list}">
			<tr>
				<td>${row.userName}(<fmt:formatDate value="${row.regdate}"
						pattern="yyyy-MM-dd HH:mm:ss" />) <br> ${row.replytext}
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>