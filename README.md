# spring5-template-jdk8 🧱

📌 JDK 1.8 기반, Spring Framework 5.3.34를 사용한 웹 템플릿 프로젝트

## ✅ 주요 구성
- Spring MVC 5.3.34
- Maven + WAR Packaging
- MyBatis + JDBC
- FILTER : CORSFilter, XSSFilter
- INTERCEPTOR : SessionInterceptor
- Redis (Optional)

## 🧱 구성 요소 예시 포함

다음 구성은 템플릿에 기본 포함되어 있으며, 필요에 따라 확장 가능합니다:

| 구성 | 설명 |
|------|------|
| `CORSFilter.java` | CORS 허용 도메인/메서드/헤더 설정용 보안 필터 |
| `XSSFilter.java`, `XSSRequestWrapper.java` | 입력값에 대한 XSS 방지 필터 |
| `SessionInterceptor.java` | 세션 유효성 체크 인터셉터 |
| `AppConfig.java` | app.properties 설정 접근 유틸 클래스 (@Value + Env 병행 지원) |

📌 모든 Filter는 `web.xml`, Interceptor는 `spring-servlet.xml`에 기본 등록되어 있습니다.

## 🧾 로그 설정 (Log4j2)

본 템플릿 프로젝트는 Log4j2를 사용하여 콘솔 및 파일 기반 로깅을 지원.

### 📌 주요 특징
- **레벨 기준**: 기본 로그 레벨은 `WARN`.
- **콘솔 로그**: `WARN` 이상 로그만 출력.
- **파일 로그**: `logs/app.log`에 기록되며, 다음 조건에서 롤링:
  - 파일 크기 100MB 초과 시 자동 압축(`.gz`) 후 분할 저장
  - 30일 이상 된 로그는 자동 삭제

### 📁 로그 구조
```
logs/
├── app.log                    # 현재 로그 파일
└── archive/
    ├── app-2025-04-12-1.log.gz
    ├── app-2025-04-12-2.log.gz
    └── ...                    # 과거 압축된 로그들 (최대 30일 보관)
```

### 🛠 로그 설정 위치
- 설정 파일: `src/main/resources/log4j2.xml`

필요 시 로그 레벨 또는 출력 포맷을 자유롭게 수정.


## 🛠️ 환경

- Java 1.8
- Spring 5.3.34
- WAS : Tomcat
- IDE : Eclipse

---

## 📁 디렉토리 구조 (요약)
```
src/
├── main/
│   ├── java/                 # Controller, Service, DAO, VO
│   ├── resources/
│   │   ├── config/           # app.properties, app-dev.properties
│   │   ├── mapper/           # MyBatis SQL Mapper XMLs
│   │   └── spring-conf/      # spring-servlet.xml, root-context.xml
│   └── webapp/
│       ├── static/           # JS / CSS / 이미지 등 정적 리소스
│       │   └── vendor/       # 외부 라이브러리(jQuery, Swal 등)
│       └── WEB-INF/
│           ├── jsp/          # JSP Views
│           └── web.xml       # DispatcherServlet 설정
```



## 📦 포함된 기본 프론트엔드 라이브러리

> 모든 정적 리소스는 `/static/vendor/`에 위치하며, `common.jsp`를 통해 전역 import (OPTIONAL)

| 라이브러리       | 버전      | CDN 링크 |
|------------------|-----------|----------|
| **jQuery**       | v3.7.1    | [JS](https://code.jquery.com/jquery-3.7.1.min.js) |
| **Tabulator**    | v6.3.1    | [JS](https://unpkg.com/tabulator-tables@6.3.1/dist/js/tabulator.min.js) , [CSS](https://unpkg.com/tabulator-tables@6.3.1/dist/css/tabulator.min.css) |
| **SweetAlert2**  | v11.16.1  | [JS](https://cdn.jsdelivr.net/npm/sweetalert2@11.16.1/dist/sweetalert2.min.js) , [CSS](https://cdn.jsdelivr.net/npm/sweetalert2@11.16.1/dist/sweetalert2.min.css) |
| **FontAwesome**  | v6.7.2    | [CSS](https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css) |
| **Ionicons**     | v7.4.0    | [JS](https://cdn.jsdelivr.net/npm/ionicons@7.4.0/dist/esm/ionicons.min.js) , [CSS](https://cdn.jsdelivr.net/npm/ionicons@7.4.0/dist/collection/components/icon/icon.min.css) |



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

4. 다음 주소로 접속: (tomcat port : `8080`, webapp : `ROOT.war` 기준)
    ```
    http://localhost:8080/
    ```
    → 기본 인트로 페이지(index.jsp)가 출력.
    → 이후 sample 페이지는 `/home/home.do` 경로에서 확인 가능.

---

## 🧪 샘플 기능

- `AppConfig` 활용한 설정값 참조
- HomeController 예시 및 View 렌더링
- Tabulator 테이블 연동
- sampleAPI 호출
- SweetAlert, FontAwesome 적용예시


---




