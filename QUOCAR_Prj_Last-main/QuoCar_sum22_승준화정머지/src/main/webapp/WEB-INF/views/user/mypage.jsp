<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>마이 페이지</title>
  <link rel="stylesheet" href="/css/mypage.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
  document.addEventListener("DOMContentLoaded", function() {
    var editButton = document.querySelector(".edit");
    editButton.addEventListener("click", function() {
      var newUsername = document.getElementById("username").value;
      var newEmail = document.getElementById("email").value;
      var newBirthdate = document.getElementById("birthdate").value;
      var newCarManufacturer = document.getElementById("car-name").value;
      var newCarModel = document.getElementById("car-model").value;
      var newPassword = document.getElementById("new-password").value;
      var confirmPassword = document.getElementById("confirm-password").value;

     // 새 비밀번호와 비밀번호 확인이 일치하는지 확인
      if (newPassword !== confirmPassword) {
        alert("새 비밀번호와 확인 비밀번호가 일치하지 않습니다.");
        return;
      }

      // AJAX 요청
      $.ajax({
        type: "POST",
        url: "/user/updateUserInfo",
        data: {
          username: newUsername,
          email: newEmail,
          birthdate: newBirthdate,
          carManufacturer: newCarManufacturer,
          carModel: newCarModel,
          password: newPassword,  // 기존 비밀번호
          newPassword: newPassword,  // 새 비밀번호
        },
        success: function(data) {
          alert("사용자 정보가 업데이트되었습니다.");
        },
        error: function(error) {
          alert("사용자 정보 업데이트 중 오류가 발생했습니다.");
        }
      });
    });
  });
</script>
</head>
<body>
  <div class="my-page">
    <div class="header">
      <h1>마이 페이지</h1>
      <h2>${userid}</h2>
      <h2>${username}</h2>
    </div>
    <div class="main">
      <div class="info">
        <h3>내 정보</h3>
        <ul>
          <li>
            <label for="userid">이름</label>
            <input type="text" id="userid" value="${userid}" readonly>
          </li>
          <li>
            <label for="username">닉네임</label>
            <input type="text" id="username" value="${username}">
         </li>
         <li>
            <label for="password">현재 비밀번호</label>
            <input type="password" id="password">
         </li>
         <li>
            <label for="new-password">새 비밀번호</label>
            <input type="password" id="new-password">
         </li>
         <li>
            <label for="confirm-password">비밀번호 확인</label>
            <input type="password" id="confirm-password">
         </li>  
          <li>
            <label for="gender">성별</label>
            <input type="text" id="gender" value="${gender}" readonly>
          </li>
          <li>
            <label for="email">이메일</label>
            <input type="email" id="email" value="${email}">
          </li>
          <li>
            <label for="birthdate">생년월일</label>
            <input type="text" id="birthdate" value="${birthdate}" readonly>
          </li>
          <li>
            <label for="car-name">차량명</label>
            <input type="text" id="car-name" value="${carManufacturer}">
          </li>
          <li>
            <label for="car-model">차 모델</label>
            <input type="text" id="car-model" value="${carModel}">
          </li>
        </ul>
      </div>
      <div class="function">
        <button type="button" class="edit">수정</button>
      </div>
    </div>
  </div>
  <c:if test="${not empty successMessage}">
    <div class="success-message">${successMessage}</div>
  </c:if>
  <c:if test="${not empty errorMessage}">
    <div class="error-message">${errorMessage}</div>
  </c:if>
</body>
</html>