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
    <p>Spring MVC 템플릿이 정상적으로 동작 중</p>
    <p><code>/WEB-INF/jsp/home.jsp</code></p>

    <hr style="margin: 40px auto; width: 200px; border: 0; border-top: 1px solid #ccc;">

    <p>✔️ 이 파일은 <strong>HomeController</strong>에 의해 매핑</p>
    
    <div style="margin-bottom: 30px;">
	    <p>🔎 아래 버튼을 클릭하면 <code>sampleAPI()</code> 함수가 실행되어, 콘솔에서 API 응답을 확인할 수 있습니다.</p>
	    <button onclick="sampleAPI()" style="padding: 8px 16px; font-size: 1rem;">
	        sampleAPI() 호출
	    </button>
	</div>
    <div>
    	<div id="test-table"></div>
    </div>
</body>
</html>
