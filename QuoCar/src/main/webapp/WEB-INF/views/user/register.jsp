<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="stylesheet" href="/css/register.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head> 
<body>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<h3>회원 가입</h3>
<h2>Quo Car</h2>
<p class="w-pct60 right" style="margin: 0 auto; padding-bottom: 5px; font-size: 13px;">* 표시는 필수 항목입니다.</p>
<form>
<table class="w-pct60">
<tr>
    <th class="w-px160">* 이름</th>
    <td><input type="text" name="name" /></td>
</tr>
<tr>
    <th>* 아이디</th>
<td>
    <input type="text" name="id" class="chk" id="userId" /><br>
    <div class='valid'>아이디를 입력하세요 (소문자 영문자와 숫자만 허용됩니다)</div>
    <button type="button" id="idCheckButton">중복 확인</button>
</td>
</tr>
<tr>
    <th>* 비밀번호</th>
    <td>
        <input type="password" name="pw" id="pw" class="chk" />
        <div class="valid">대소문자 및 숫자를 모두 포함한 비밀번호를 입력하세요</div>
    </td>
</tr>
<tr>
    <th>* 비밀번호 확인</th>
    <td>
        <input type="password" name="pw_ck" id="pw_ck" class="chk" />
        <div class="valid">비밀번호를 다시 입력하세요</div>
        <div id="password-error" style="color: red; font-size: 13px; font-weight: bold;"></div>
    </td>
</tr>
<tr>
    <th>* 성별</th>
    <td>
        <label><input type="radio" name="gender" value="남성" checked/>남성</label>
        <label><input type="radio" name="gender" value="여성" />여성</label>
    </td>
</tr>
<tr>
    <th>* 이메일</th>
    <td>
        <input type="text" name="email" />
        <div class="valid">이메일을 입력하세요</div>
    </td>
</tr>
<tr>
    <th>* 생년월일</th>
    <td>
        <input type="text" name="birth" id="datepicker" />
    </td>
</tr>
<tr>
    <th>* 차량 모델</th>
    <td>
        <select name="vehicleModel" id="vehicleModel" required>
            <option value="" disabled selected hidden>선택하세요</option>
            <option value="현대">현대</option>
            <option value="기아">기아</option>
            <option value="KG 모빌리티">KG 모빌리티</option>
        </select>
    </td>
</tr>
<tr>
    <th>* 차량 이름</th>
    <td>
        <select name="vehicleName" id="vehicleName">
        </select>
    </td>
</tr>
</table>
</form>

<form action="/" method="post">
    <!-- 사용자 등록 데이터를 위한 폼 필드를 추가하세요 -->
    <!-- 이름, 아이디, 비밀번호, 성별, 이메일 및 기타 필수 데이터 필드를 추가하세요 -->

    <!-- 폼을 제출할 제출 버튼을 추가하세요 -->
    <input type="submit" value="가입하기">
</form>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/js/all.min.js"></script>
<script type="text/javascript"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
// 사용자가 클릭하면 날짜 입력 필드에 날짜 선택기가 나타납니다
$("#datepicker").datepicker({
    dateFormat: 'yymmdd', // 날짜 형식 설정
    changeYear: true, // 연도 선택 허용
    yearRange: '1900:' + new Date().getFullYear(), // 연도 범위 설정
    maxDate: '0', // 오늘 이전 날짜만 허용
});

// 직접 날짜를 입력할 때 날짜 선택기를 비활성화
$("#datepicker").on("focus", function() {
    $(this).datepicker("show");
});

// 모델 및 이름 선택 요소에 대한 참조 가져오기
var modelSelect = document.getElementById("vehicleModel");
var nameSelect = document.getElementById("vehicleName");

// 모델을 가능한 이름에 매핑하는 JavaScript 객체 정의
var availableNames = {
    "현대": ["아반떼", "소나타",],  // 현대 차량 이름 추가
    "기아": ["K3", "K5"],  // 기아 차량 이름 추가
    "KG 모빌리티": ["티볼리", "토레스"],  // KG 모빌리티 차량 이름 추가
};

// 모델 선택이 변경될 때 이름 선택 옵션을 업데이트
modelSelect.addEventListener("change", function() {
    var selectedModel = modelSelect.value;
    var names = availableNames[selectedModel] || [];

    // 기존 옵션 지우기
    nameSelect.innerHTML = "";

    // 새로운 옵션 추가
    names.forEach(function(name) {
        var option = document.createElement("option");
        option.value = name;
        option.text = name;
        option.style.width = name.length * 10 + "px";
        nameSelect.appendChild(option);
    });
});

// 초기화를 위해 change 이벤트를 트리거
modelSelect.dispatchEvent(new Event("change"));

// 비밀번호 확인을 확인하기 위한 이벤트 리스너 추가
document.getElementById("pw_ck").addEventListener("blur", function() {
    var password = document.getElementById("pw").value;
    var passwordConfirmation = this.value;
    var passwordError = document.getElementById("password-error");

    if (password !== passwordConfirmation) {
        passwordError.textContent = "비밀번호가 일치하지 않습니다!";
    } else {
        passwordError.textContent = "";
    }
});

//아이디 중복 확인 버튼 클릭 이벤트 처리
document.getElementById("idCheckButton").addEventListener("click", function() {
    var userId = document.getElementById("userId").value;
    
    // 아이디 중복 확인을 서버에 보내고 처리하는 코드 추가
    $.ajax({
        url: "/user/idChk", // 컨트롤러 메소드의 URL로 변경
        type: "post",
        dataType: "json",
        data: { "userId": userId },
        success: function(data) {
            if (data === true) {
                alert("이 아이디는 사용 중입니다.");
            } else {
                alert("이 아이디는 사용 가능합니다.");
            }
        },
        error: function() {
            alert("서버 오류가 발생했습니다. 다시 시도해주세요.");
        }
    });
});

</script>

</body>
</html>
