<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 스프링은 따로 라이브러리를 설치하지 않아도 다운 받을 라이브러리를 설정할 수 있다. -->
<!-- 그 중에 jstl 라이브러리도 있기 때문에 사용할 수 있는것 -->
<!-- 라이브러리 목록은 iot/pom.xml, c:\사용자\.m2에서 확인가능 -->

<!-- <link rel="stylesheet" type="text/css" href="css/common.css"> -->
<!-- rel : 형태는 스타일 시트, 타입은 텍스트로된 css -->
<!-- 
<style>
header ul, header ul li {
	margin: 0;
	padding: 0;
	display: inline;
}

header .category {
	font-size: 18px;
}

header .category ul li:not(:first-child) { /* 첫번째 li만 빼고 지정 */
	padding-left: 30px;
}

header .category ul li a:hover, header .category ul li a.active {
	font-weight: bold;
	color: #0000cd;
}
</style>
 -->
 
<header>
	<a href="/" ><img src="/img/opencar.png" alt="QUOCAR"></a>
	<h3 class="logo">Quo<span>Car</span></h3>
	<nav class="category">
		<ul>
			<li><a href="index.jsp">소개</a></li>
			<li><a href="list2.jsp">보험지식</a></li>
			<li><a href="mechanic.jsp">정비</a></li>
			<li><a href="index.jsp">커뮤니티</a></li>
			<li><a href="index.jsp">고객센터</a></li>
			<li><a href="login">로그인</a></li>
		</ul>
	</nav>
</header>