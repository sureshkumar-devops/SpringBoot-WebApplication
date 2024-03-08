FROM adoptopenjdk/openjdk11:alpine-jre
RUN addgroup -S lehar \
    && adduser -S lehar -G lehar
USER lehar
ARG artifact=target/spring-boot-web.jar
WORKDIR /opt/app
COPY ${artifact} app.jar
ENTRYPOINT ["java","-jar","app.jar"]

