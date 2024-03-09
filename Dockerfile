FROM adoptopenjdk/openjdk11:alpine-jre
ARG artifact=target/*.war
WORKDIR /opt/app
COPY ${artifact} app.war
ENTRYPOINT ["java","-jar","app.war"]

