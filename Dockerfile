FROM adoptopenjdk/openjdk11:alpine-jre
ARG artifact=target/*.jar
WORKDIR /opt/coupon-website-app
COPY $(artifact) coupon-website-app.jar
ENTRYPOINT["java","-jar","coupon-website-app"]
