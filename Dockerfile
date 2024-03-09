FROM adoptopenjdk/openjdk11:alpine-jre
ARG artifact=target/spring-boot-web.war
WORKDIR /opt/app
COPY ${artifact} app.war
ENTRYPOINT ["java","-jar","app.war"]

