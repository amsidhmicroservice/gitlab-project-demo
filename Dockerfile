FROM openjdk:17-alpine
VOLUME /tmp
COPY /target/gitlab-project-demo-*.jar gitlab-project-demo.jar
COPY src src
COPY Dockerfile Dockerfile
COPY pom.xml pom.xml
ENTRYPOINT ["java", "-jar", "gitlab-project-demo.jar"]