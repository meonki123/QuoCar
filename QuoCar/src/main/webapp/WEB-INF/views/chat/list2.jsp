<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/common.css" />
<style>
   .tr_header { 
      background-color : black;
      color :white;
   }
   .tr_header > td {
      text-align :center;
      font-weight : bold;
   }
   body {
	margin-bottom: 300px; /* footer와 겹치지 않도록 페이지 하단 여백 추가 */
}

footer {
	position: fixed; /* 화면 아래에 고정 */
	left: 0;
	bottom: 0;
	width: 100%; /* 전체 너비로 확장 */
	background-color: #333; /* 배경색 지정 (원하는 색상으로 변경) */
	color: #fff; /* 글자색 지정 (원하는 색상으로 변경) */
	text-align: center; /* 텍스트 가운데 정렬 */
	padding: 10px 0; /* 상하 여백 설정 */
}
.fixed-button {
	position: fixed;
	font-size: 25px;
	bottom: 70px; /* 위에서 20px 거리에 고정 */
	right: 30px; /* 오른쪽에서 20px 거리에 고정 */
	border: none;
	border-radius: 8px;
	cursor: pointer;
}

</style>
</head>
<body>
     <main>
   	 <h2>차량 목록</h2>
   	 <table>   	  
   	   <tr class="tr_header">
   	     <td>model_id</td>
   	     <td>car_model</td>
   	   </tr>
   	   <c:forEach var="cmodel"  items="${ cmodelList }">
   	   <tr>
   	     <td>${ cmodel.model_id   }</td>
   	     <td>${ cmodel.car_model   }</td>
   	   </tr>
   	   </c:forEach>
   	 </table> 
   </main>

</body>
</html>










