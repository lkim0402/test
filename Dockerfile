# 1. JDK 이미지를 베이스로 사용
FROM openjdk:17-jdk-slim

# 2. 애플리케이션 JAR 파일을 컨테이너로 복사
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

# 3. 컨테이너가 실행될 때 실행할 명령어
ENTRYPOINT ["java","-jar","/app.jar"]

# 4. 서비스 포트 노출 (Spring Boot 기본 8080)
EXPOSE 8080