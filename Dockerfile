FROM anapsix/alpine-java
VOLUME /tmp
ADD target/springbootApp.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
