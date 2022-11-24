FROM openjdk:8-jdk-alpine
VOLUME /tmp
WORKDIR /ART
copy . .
COPY target/hello-world-1.0.1-SNAPSHOT.jar springboothelloworldmain.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","springboothelloworldmain.jar"]