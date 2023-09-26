<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<a href="/" target="/"><img src="/img/favicon.ico" alt=""></a>
<link rel="stylesheet" href="css/common.css" />

<script>

document.addEventListener("DOMContentLoaded", function () {
     // 펼쳐보기 버튼을 클릭할 때 추가 내용을 토글하는 코드
     const expandButtons = document.querySelectorAll(".FeedView-module__btn_more___zGfeT");

     expandButtons.forEach(function (button) {
       button.addEventListener("click", function () {
         // 현재 버튼의 부모 요소에서 추가 내용을 찾아서 토글
         const parent = button.parentElement;
         const additionalContents = parent.querySelectorAll(".additional-content, .additional-content2, .additional-content3");

         additionalContents.forEach(function (additionalContent) {
           if (additionalContent.style.display === "none" || additionalContent.style.display === "") {
             additionalContent.style.display = "block";
             button.innerHTML = "접기 ➖";
           } else {
             additionalContent.style.display = "none";
             button.innerHTML = "펼쳐보기 ➕";
           }
           
          });
       });
     });
   });

document.addEventListener("DOMContentLoaded", function () {
  const thumbnailImages = document.querySelectorAll(".thumbnail-image");

  thumbnailImages.forEach(function (image) {
    image.addEventListener("mouseenter", function () {
      // 호버 시 확대 효과 적용
      image.style.transform = "scale(1.1)";
    });

    image.addEventListener("mouseleave", function () {
      // 호버 해제 시 원래 크기로 돌아가기
      image.style.transform = "scale(1)";
    });
    
  });
});
</script>

<style>
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

br {
   border-bottom: 1px dashed #ccc; /* 연한 회색 점선 선으로 설정 */
}

.container {
   display: flex;
   justify-content: space-between;
}

.content {
   width: 48%; /* 각 컨텐츠 영역의 너비를 조정하여 반으로 나눕니다. */
   padding: 10px;
   border: 1px solid #ccc;
}

h2 {
   margin: 10px 0; /* 상단과 하단의 마진을 10px로 설정 */
   background-color: #3EB75A;
   color: #fff; /* 글자색을 흰색으로 설정 */
   padding: 10px 20px; /* 내부 여백을 추가하여 텍스트 주변에 여백을 둠 */
   border-radius: 8px; /* 라운드 코너를 주어 고급스러운 모양으로 만듭니다. */
   text-align: center; /* 텍스트 가운데 정렬 */
   font-size: 24px; /* 텍스트 크기를 조정하여 더 강조합니다. */
}

h3 {
   text-align: center;
}

.news-image {
   display: inline-block;
   width: 100%; /* 이미지 컨테이너의 너비를 50%로 설정 */
   height: 150px;
   border-radius: 10px; /* 이미지 모서리를 둥글게 만듭니다. */
   transition: transform 0.2s ease;
}

/* 이미지 호버 효과 스타일 */
.centered-image.left-image {
   transition: transform 0.3s; /* 이미지 크기 변경에 대한 트랜지션 */
   cursor: pointer; /* 호버 시 커서 모양 변경 */
}

/* 호버 시 이미지 확대 */
.centered-image.left-image:hover {
   transform: scale(1.1); /* 이미지 확대 비율 */
}

/* 이미지 호버 시 확대 스타일 */
.news-image:hover .centered-image {
   transform: scale(1.1); /* 이미지를 1.1배로 확대 */
}

/* 이미지 스타일 */
.centered-image {
   width: 20%; /* 이미지 너비를 100%로 설정하여 컨테이너에 맞게 크기를 조절합니다. */
   height: auto; /* 이미지의 높이를 자동으로 조절하여 원본 비율을 유지합니다. */
   border-radius: 10px; /* 이미지 모서리를 둥글게 만듭니다. */
}

.half-width {
   width: 50%; /* 이미지의 너비를 50%로 설정 */
}

/* P 태그 스타일 */
.content a {
   text-decoration: none; /* 링크 밑줄 제거 */
}

.content p {
   font-size: 18px; /* 글자 크기를 원하는 크기로 조절 */
   font-weight: bold; /* 볼드체로 설정 */
   margin: 0; /* 기본 마진 제거 */
}

/* 이미지 간격 설정 */
.news-image div {
   display: flex; /* 이미지를 가운데 정렬하기 위해 */
   justify-content: center; /* 이미지를 중앙 정렬하기 위해 */
}

.news-image img {
   margin-left: 50px; /* 이미지 왼쪽에 10px 마진 추가 */
   margin-right: 50px; /* 이미지 오른쪽에 10px 마진 추가 */
}

/* 비디오 썸네일 컨테이너 스타일 */
.video-thumbnails-container {
   display: flex; /* 이미지를 가로로 나란히 배열하기 위해 flex 사용 */
   align-items: center; /* 세로 가운데 정렬 */
   justify-content: center; /* 이미지를 중앙 정렬 */
}

/* 비디오 썸네일 작업 */

/* 비디오 썸네일 이미지 스타일 */
.thumbnail-image {
   width: 200px; /* 이미지 너비 설정 */
   height: 200px; /* 이미지 높이 설정 */
   border-radius: 10px;
   transition: transform 0.2s ease;
}

.thumbnail-image.hover {
   transform: scale(1.1);
}

/* 썸네일 이미지 아래의 텍스트 스타일 */
.video-thumbnails-container p {
   font-size: 14px; /* 원하는 텍스트 크기로 조절 */
   text-align: center; /* 가운데 정렬 */
}

/* 이미지 스타일 */
.thumbnail-image {
   width: auto; /* 이미지 너비를 자동으로 조절하여 원본 비율 유지 */
   max-height: 300px; /* 이미지 높이 제한 (원하는 높이로 설정) */
   margin: 0 10px; /* 이미지 사이의 간격을 좌우로 10px로 설정 (원하는 간격으로 조절) */
}

/* 이미지 스타일 수정 */
.left-image {
   float: left;
   margin-right: 10px; /* 이미지 오른쪽에 간격을 주기 위해 조절 가능 */
}

/* 텍스트 스타일 수정 */
.news-text {
   position: relative;
   top: 0;
   left: 0;
   margin: 0;
   padding: 0;
}

/* 펼쳐보기 버턴 */
.FeedView-module__content_more {
   display: none;
}

/* 펼쳐보기 버튼을 중간으로 정렬 */
.FeedView-module__btn_more___zGfeT {
   margin: 0 auto; /* 가로 중앙 정렬 */
   display: block; /* 버튼을 블록 레벨 요소로 변경하여 가로 중앙 정렬을 적용 */
   text-align: center; /* 텍스트를 가운데 정렬 */
   margin-top: 20px; /* 원하는 상단 여백 추가 */
}

/* 버튼 스타일 */
.FeedView-module__btn_more___zGfeT {
   background-color: transparent; /* 배경색 지정 (원하는 색상으로 변경) */
   color: #000; /* 글자색 지정 (원하는 색상으로 변경) */
   border: none; /* 테두리 제거 */
   border-radius: 5px; /* 라운드 코너를 주어 고급스러운 모양으로 만듭니다. */
   padding: 10px 20px; /* 내부 여백을 추가하여 텍스트 주변에 여백을 둠 */
   font-size: 18px; /* 텍스트 크기를 조정하여 더 강조합니다. */
   cursor: pointer; /* 마우스 커서를 손가락 포인터로 변경하여 클릭 가능함을 나타냅니다. */
   transition: background-color 0.3s ease; /* 배경색 변경 시 부드러운 전환 효과 추가 */
}

/* 버튼 호버 시 스타일 */
.FeedView-module__btn_more___zGfeT:hover {
   background-color: #937359; /* 호버 시 배경색 변경 (원하는 색상으로 설정) */
}

/* 추가 내용 컨테이너 스타일 */
.additional-contents-container {
   display: flex;
   flex-direction: column; /* 수직 방향으로 나란히 정렬 */
   align-items: flex-start; /* 왼쪽 정렬 */
}

/* 추가 내용 이미지 스타일 */
.additional-content .centered-image, .additional-content2 .centered-image,
   .additional-content3 .centered-image {
   width: 15%; /* 이미지 크기를 동일하게 설정 */
   height: auto; /* 이미지 높이를 자동 조절하여 원본 비율 유지 */
   border-radius: 10px; /* 이미지 모서리 둥글게 */
}

/* 추가 내용 스타일 */
.additional-content, .additional-content2, .additional-content3 {
   width: 100%;
   margin-top: 100px;
}
</style>

</head>
<body>
   <%@ include file="header.jsp"%>

   <div class="container">
      <div class="content">
         <h2>자동차 뉴스</h2>
         <!-- 자동차 뉴스 내용을 이곳에 추가하세요 -->
         <h3></h3>
         &nbsp;
         &nbsp;
         <div class="news-image">
            <a
               href="https://post.naver.com/viewer/postView.naver?volumeNo=36619342&memberNo=1047921">
               <img src="/images/bmw_xm3.jpg" alt="BMW XM3"
               class="centered-image left-image">
               <p>➡ the New 2023 BMW X3M - 모두가 만족할 고성능 SUV 이야기</p>
            </a>
         </div>
         
         &nbsp; 
         
         <div class="news-image">
            <a
               href="https://post.naver.com/viewer/postView.naver?volumeNo=36614292&memberNo=11643111">
               <img src="/images/c40.png" alt="VOLVO C40 RECHARGE"
               class="centered-image left-image">
               <p>➡ 2024 볼보 C40 Recharge 시승기</p> 
            </a>
         </div>
         
         &nbsp;
         
         <div class="news-image">
            <a
               href="https://post.naver.com/viewer/postView.naver?volumeNo=36616001&memberNo=31245283">
               <img src="/images/elatre.jpg" alt="LOTUS ELATRE ELECTRIC"
               class="centered-image left-image">
               <p>➡ 로터스 하이퍼카... 마력 무려 990!</p>  
            </a>
         </div>      
         
         &nbsp;
               
         <div class="news-image">
            <a
               href="https://post.naver.com/viewer/postView.naver?volumeNo=36615806&memberNo=783179">
               <img src="/images/gmc.jpg" alt="GMC"
               class="centered-image left-image">
               <p>➡ GMC 정통 아메리칸 럭셔리</p>
            </a>
         </div>   
         <br>
         <br>
         <hr>
         <button type="button" class="FeedView-module__btn_more___zGfeT">
            펼쳐보기 ➕ <i class="FeedView-module__ico_plus___dMU_U"></i>
         </button>
         <br>
         <hr>
         <!-- 추가 내용을 감싸는 div -->
      <div class="additional-content-container">
         <div class="additional-content" style="display: none;">
            <a
               href="https://post.naver.com/viewer/postView.naver?volumeNo=36605276&memberNo=11643111">
               <img src="/images/ix1.jpg" alt="BMW"
               class="centered-image left-image">
               <p>➡ BMW IX1 ELECTRIC</p>
            </a>
         </div>   
      </div>   
      <div class="additional-content-container">
         <div class="additional-content2" style="display: none;">
            <a
               href="https://post.naver.com/viewer/postView.naver?volumeNo=36623963&memberNo=37243826">
               <img src="/images/bmw2.jpg" alt="BMW1" class="centered-image left-image">
               <p>➡ BMW 키드니 그릴 </p>
            </a>
         </div>
      </div>
      <div class="additional-content-container">
         <div class="additional-content3" style="display: none;">
            <a
               href="https://post.naver.com/viewer/postView.naver?volumeNo=36584270&memberNo=36780718">
               <img src="/images/torres.jpeg" alt="torres" class="centered-image left-image">
               <p>➡ 토레스로 도전한 차박.. 그 결과는?! </p>
            </a>
         </div>
      </div>
   </div>

      <div class="content">
         <h2>자동차 정보</h2>
         <!-- 자동차 정보 내용을 이곳에 추가하세요 -->
         <h3></h3>
         &nbsp;
         <div class="news-image">
            <a
               href="https://post.naver.com/viewer/postView.naver?volumeNo=36621834&memberNo=783179">
               <img src="/images/Eclass.jpg" alt="Benz Eclass"
               class="centered-image left-image">
               <p>➡ Mercedes BENZ - E CLASS - 벤츠, 신형 E클래스 올터레인 공개</p>
            </a>
         </div>
         
         &nbsp;
         
      <div class="news-image">
         <a
            href="https://post.naver.com/viewer/postView.naver?volumeNo=36620953&memberNo=32022697">
            <img src="/images/audi.jpg" alt="AUDI"
            class="centered-image left-image">
            <p>➡ 아우디 Q4 e-트론 2024년형 공개</p> &nbsp; 
         </a>
      </div>      
      
      &nbsp;
      
      <div class="news-image">
         <a
            href="https://post.naver.com/viewer/postView.naver?volumeNo=36619809&memberNo=25776368">
            <img src="/images/ajur.jpg" alt="bentley"
            class="centered-image left-image">
            <p>➡ 벤틀리 플라잉스퍼 아주르 S 공개</p> &nbsp; 
         </a>
      </div>      
      
      &nbsp;
            
      <div class="news-image">
         <a
            href="https://post.naver.com/viewer/postView.nhn?volumeNo=36634130&memberNo=44489085&isInf=true">
            <img src="/images/carnival.jpg" alt="kia"
            class="centered-image left-image">
            <p>➡ 기아 카니발 페이스리프트카 포착</p>
         </a>
      </div>
         <br>
         <br>

         <hr>
         <button type="button" class="FeedView-module__btn_more___zGfeT">
            펼쳐보기 ➕ <i class="FeedView-module__ico_plus___dMU_U"> </i>
         </button>
         <br>
         <hr>
         <!-- 추가 내용을 감싸는 div -->
      <div class="additional-content-container">
         <div class="additional-content" style="display: none;">
            <a
               href="https://post.naver.com/viewer/postView.naver?volumeNo=36621367&memberNo=35797058">
               <img src="/images/alfa.jpg" alt="BMW"
               class="centered-image left-image">
               <p>➡ AlfaRomeo 스트라달레 출시</p>
            </a>
         </div>   
      </div>   
      <div class="additional-content-container">
         <div class="additional-content2" style="display: none;">
            <a
               href="https://post.naver.com/viewer/postView.naver?volumeNo=36597139&memberNo=5549852">
               <img src="/images/chuseok.jpg" alt="BMW1" class="centered-image left-image">
               <p>➡ 추석 연휴 장거리 운전 차량 관리 노하우 </p>
            </a>
         </div>
      </div>
      <div class="additional-content-container">
         <div class="additional-content3" style="display: none;">
            <a
               href="https://post.naver.com/viewer/postView.naver?volumeNo=36633231&memberNo=24075080">
               <img src="/images/ex30.jpg" alt="VOLVO" class="centered-image left-image">
               <p>➡ 볼보 EX30 전기차 출시 임박 </p>
            </a>
         </div>
      </div>
   </div>
      </div>

   </div>

   <div class="content">
      <h2>추천영상</h2>
      <h3></h3>
      &nbsp;
      <div class="video-thumbnails-container">
         <a href="https://www.youtube.com/watch?v=mQDz-xWC16A&t=425s"> <img
            src="/images/jcar.jpg" alt="Ferrari" class="thumbnail-image">
            <p>제이특공대 - 페라리 점검</p>
         </a> <br>
         &nbsp;
         <a href="https://www.youtube.com/watch?v=aXmzsCiSbxo&t=10s"> <img
            src="/images/mocar.jpg" alt="Bentley" class="thumbnail-image">
            <p>모카 벤틀리 시승기</p>
         </a>
      </div>
      &nbsp;
      
      <div class="video-thumbnails-container">
         <a href="https://www.youtube.com/watch?v=f72yo3leWIQ"> <img
            src="/images/oilcar.jpg" alt="engineoil" class="thumbnail-image">
            <p>박병일 명장 엔진오일</p>
         </a> <br> 
         &nbsp;
         <a href="https://www.youtube.com/watch?v=18btQyFChc0&t=2s"> <img
            src="/images/brake.jpg" alt="Brake" class="thumbnail-image">
            <p>브레이크 패드 잔량 확인법</p>
         </a>
      </div>


      <%@ include file="footer.jsp"%>

      </body>
</html>