	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html lang="ko">
	<head>
	    <meta charset="UTF-8">
	    <title>spring5-template-jdk8 :: Intro</title>
	    <style>
	        body {
	            font-family: "Segoe UI", sans-serif;
	            background-color: #f9f9f9;
	            color: #333;
	            margin: 50px;
	        }
	        h1 {
	            color: #007acc;
	        }
	        .section {
	            margin-top: 30px;
	        }
	        code {
	            background: #eee;
	            padding: 2px 6px;
	            border-radius: 4px;
	            font-family: monospace;
	        }
	    </style>
	</head>
	<body>
	    <h1>✅ spring5-template-jdk8</h1>
	    <p><strong>Spring Framework 5.3.x + JDK 1.8</strong> 기반의 웹 프로젝트 템플릿</p>
	    
	    
	    
	    <div class="section">
	        <h2>🚀 SAMPLE PAGE</h2>
		    <p>샘플 페이지를 확인하려면 아래 주소를 클릭:</p>
		    <p>
		        🔗 <a href="${pageContext.request.contextPath}/home/home.do">
		        ${pageContext.request.contextPath}/home/home.do</a>
		    </p>
		    <p>샘플 페이지에서는 <strong>jQuery + Tabulator.js</strong>를 이용한 테이블 UI 예시를 확인 가능</p>
	    </div>
	    
	    
	    
	    <div class="section">
	        <h2>📁 기본 구성</h2>
	        <ul>
	            <li>MVC 구조: Controller, Service, DAO, VO</li>
	            <li>MyBatis 연동</li>
	            <li>프로퍼티 기반 설정 (<code>app.properties</code>)</li>
	            <li>Log4j2, Redis(Optional), CORS Filter 등</li>
	        </ul>
	    </div>
	
	    <div class="section">
	        <h2>📦 디렉토리 구조</h2>
	        <ul>
	            <li><code>src/main/java</code> - 코드 영역</li>
	            <li><code>src/main/resources/config</code> - 설정 파일 (환경별 app.properties)</li>
	            <li><code>src/main/resources/spring-conf</code> - SPRING 설정 파일</li>
	            <li><code>src/main/resources/mapper</code> - MyBatis SQL Mapper</li>
	            <li><code>src/main/webapp/WEB-INF/jsp</code> - JSP View</li>
	        </ul>
	    </div>
	
	    <div class="section">
		    <h2>🔧 설정 파일 위치</h2>
		    <ul>
		        <li><code>/WEB-INF/web.xml</code> - 서블릿 및 필터 초기화 설정 (프로젝트 진입점)</li>
		        <li><code>/resources/spring-conf/spring-servlet.xml</code> - Spring MVC 구성 (컨트롤러, ViewResolver 등)</li>
		        <li><code>/resources/spring-conf/root-context.xml</code> - 공통 Bean 설정 (DB, MyBatis, Redis 등)</li>
		        <li><code>/resources/config/app.properties</code> - 환경별 설정 (DB 접속, CORS 등 구성 변수)</li>
		        <li><code>/resources/log4j2.xml</code> - log4j 환경설정</li>
		    </ul>
		</div>
		
		<div class="section">
		    <h2>📦 포함된 기본 JS/CSS 라이브러리</h2>
		    <ul>
		        <li><code>jQuery</code> - v3.7.1</li>
		        <li><code>Tabulator</code> - v6.3.1</li>
		        <li><code>SweetAlert2</code> - v11.16.1</li>
		        <li><code>FontAwesome</code> - v6.7.2</li>
		        <li><code>Ionicons</code> - v7.4.0</li>
		    </ul>
		    <p>📁 모든 라이브러리는 <code>static/vendor/</code> 경로에 정리되어 있으며, <code>common.jsp</code>에서 전역 import(OPTIONAL)</p>
		</div>

	    
	
	    <hr>
	
		<p>🧑‍💻 by <a href="https://github.com/D0iloppa/spring5-template-jdk8" target="_blank">@D0ilman</a> – 완성된 템플릿은 <code>README.md</code>와 함께 GitHub에 배포됩니다.</p>
	</body>
	</html>
