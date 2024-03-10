FROM adoptopenjdk/openjdk11:alpine-jre
ARG artifact=target/*.war
WORKDIR /opt/app
COPY ${artifact} app.war
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.war"]

