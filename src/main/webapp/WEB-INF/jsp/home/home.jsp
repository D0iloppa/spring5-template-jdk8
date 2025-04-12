<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>🏠 HOME SWEET HOME</title>
    <style>
        body {
            font-family: "Segoe UI", sans-serif;
            background-color: #f4f4f4;
            color: #333;
            text-align: center;
            padding-top: 80px;
        }
        h1 {
            font-size: 2.5rem;
            color: #007acc;
        }
        p {
            margin-top: 10px;
            font-size: 1.1rem;
        }
        code {
            background: #eee;
            padding: 2px 6px;
            border-radius: 4px;
            font-family: monospace;
        }
    </style>
    <%@ include file="/WEB-INF/jsp/common/common.jsp" %>
    <script src="${pageContext.request.contextPath}/static/js/home/home.js"></script>
</head>
<body>
    <h1>🏡 HOME SWEET HOME</h1>

    <!-- 🔷 Info Box -->
    <div style="background-color: #fff; padding: 20px 30px; margin: 20px auto; width: fit-content; border-radius: 12px; box-shadow: 0 2px 6px rgba(0,0,0,0.1);">
        <p style="margin: 0; font-size: 1.1rem;">✔️ Spring MVC 템플릿이 정상적으로 동작 중</p>
        <p style="margin: 4px 0 0 0; font-size: 0.95rem; color: gray;"><code>/WEB-INF/jsp/home.jsp</code></p>
        <p style="margin-bottom: 10px;">🏗️ 이 파일은 <strong>HomeController</strong>에 의해 매핑</p>
    </div>

    <!-- ⬇️ Divider -->
    <hr style="margin: 40px auto; width: 80%; border: 0; border-top: 1px solid #ccc;">

    <!-- 🧭 Two Column Section -->
    <div style="display: flex; justify-content: center; align-items: flex-start; gap: 60px; margin-top: 30px;">

        <!-- 📌 Left Section: Info + Button -->
        <div style="flex: 1; max-width: 450px; text-align: left;">
            <p style="margin-bottom: 10px;">🔎 아래 버튼으로 함수 작동 테스트</p>
            <p style="font-size: 0.9rem; color: gray;">- 버튼 내의 아이콘은 <code>ionicons</code>입니다.</p>
            <p style="font-size: 0.9rem; color: gray; margin-bottom: 20px;">
                -<code>sampleAPI()</code> 호출 시 결과는 <strong>브라우저 개발자도구 콘솔</strong>에서 확인 가능
            </p>

            <div style="display: flex; gap: 12px;">
                <button onclick="sampleAPI()" style="padding: 8px 16px; font-size: 1rem;">
                	<ion-icon name="git-pull-request-outline"></ion-icon>
                    sampleAPI() 호출
                </button>
                <button onclick="swalTest()" style="padding: 8px 16px; font-size: 1rem;">
                	<ion-icon name="notifications-outline"></ion-icon>
                    swalTest() 호출
                </button>
            </div>
        </div>

        <!-- 📊 Right Section: Tabulator -->
        <div style="flex: 1; max-width: 500px;">
        	<h2>
        	 	<i class="fas fa-table" style="margin-right: 8px; color: #007acc;"></i>
        		TABULATOR
        	</h2>
        	<p style="font-size: 0.9rem; color: gray;">- 위 제목의 아이콘은 <code>FontAwesome</code> 입니다.</p>
            <div id="test-table"></div>
        </div>
    </div>
</body>

</html>
