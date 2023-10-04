<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="/css/register.css"> <!-- 스타일 시트 링크 추가 -->
    <!-- 필요한 스타일과 스크립트를 여기에 추가할 수 있습니다. -->
</head>
<body>
    <div class="registration-container">
        <h1>회원가입</h1>
        <form action="/register" method="post">
            <div class="input-container">
                <label for="username">아이디:</label>
                <input type="text" id="username" name="username" required>
                <!-- 아이디 중복 체크 버튼 -->
                <button type="button" id="checkDuplicate">중복 확인</button>
            </div>
            <div class="input-container">
                <label for="password">비밀번호:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="input-container">
                <label for="confirmPassword">비밀번호 확인:</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
            </div>
            <div class="input-container">
                <label for="manufacturer">차량 제조사:</label>
                <select id="manufacturer" name="manufacturer">
                    <option value="" disabled selected>선택하세요</option>
                    <!-- 동적으로 제조사 목록을 생성하거나 서버에서 전달받은 데이터를 사용할 수 있습니다. -->
                    <!-- 예시: <option value="manufacturer1">manufacturer1</option> -->
                </select>
            </div>
            <div class="input-container">
                <label for="vehicleName">차량 모델:</label>
                <select id="vehicleName" name="vehicleName">
                    <option value="" disabled selected>선택하세요</option>
                    <!-- 동적으로 차량 모델 목록을 생성하거나 서버에서 전달받은 데이터를 사용할 수 있습니다. -->
                    <!-- 예시: <option value="vehicleName1">vehicleName1</option> -->
                </select>
            </div>
            <div class="manufacturer-image">
                <!-- 선택한 제조사에 따라 이미지를 표시합니다. -->
                <!-- 예시: <img src="/images/manufacturer1.jpg" alt="제조사1 이미지" /> -->
            </div>
            <button type="submit">가입하기</button>
        </form>
        <p>이미 계정이 있으신가요? <a href="/login">로그인</a></p>
    </div>
    <!-- 아이디 중복 체크 결과를 표시할 영역 -->
    <div id="duplicateResult"></div>
</body>
</html>
