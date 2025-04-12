# spring5-template-jdk8 🧱

📌 JDK 1.8 기반, Spring Framework 5.3.34를 사용한 웹 템플릿 프로젝트

## ✅ 주요 구성
- Spring MVC 5.3.34
- Maven + WAR Packaging
- MyBatis + JDBC
- FILTER : CORSFilter, XSSFilter
- INTERCEPTOR : SessionInterceptor
- Redis (Optional)

## 🛠️ 환경

- Java 1.8
- Spring 5.3.34
- WAS : Tomcat
- IDE : Eclipse

---


## 📦 포함된 기본 프론트엔드 라이브러리

> 모든 정적 리소스는 `/static/vendor/`에 위치하며, `common.jsp`를 통해 전역 import (OPTIONAL)

- jQuery v3.7.1
- Tabulator v6.3.1
- SweetAlert2 v11.16.1
- FontAwesome v6.7.2
- Ionicons v7.4.0

> 전체 목록은 [`vendor.packages.md`](./src/main/webapp/static/vendor/vendor.packages.md) 참고

---

## 🚀 시작하기

1. Git Clone
    ```bash
    git clone https://github.com/D0iloppa/spring5-template-jdk8.git
    ```

2. 이클립스에서 Import
    ```
    File > Import > Maven > Existing Maven Projects
    ```

3. 톰캣 연동 후 실행

4. 다음 주소로 접속:
    ```
    http://localhost:8080/
    ```

---

## 🧪 샘플 기능

- `AppConfig` 활용한 설정값 참조
- HomeController 예시 및 View 렌더링
- Tabulator 테이블 연동
- sampleAPI 호출
- SweetAlert, FontAwesome 적용예시


---



