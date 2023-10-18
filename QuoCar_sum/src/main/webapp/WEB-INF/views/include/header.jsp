<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>
    <a href="/"><img src="/img/opencar.png" alt="QUOCAR"></a>
    <a href="/"><h3 class="logo">Quo<span>Car</span></h3></a>
    <nav class="category">
        <ul>
            <li><a href="index.jsp">소개</a></li>
            <li><a href="list2.jsp">보험지식</a></li>
            <li><a href="mechanic.jsp">정비</a></li>
            <li><a href="/board/list.do">커뮤니티</a></li>
            <li><a href="index.jsp">고객센터</a></li>

            <c:choose>
                <c:when test="${sessionScope.userid == null}">
                    <li><a href="${path}/login">로그인</a></li>
                </c:when>
                <c:otherwise>
                    <li>${sessionScope.userName}님이 로그인중입니다. <a href="${path}/user/logout">로그아웃</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
    </nav>
</header>
