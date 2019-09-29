FROM frolvlad/alpine-oraclejdk8-temporary:latest

VOLUME /tmp

ADD target/jenkins-demo-0.0.1-SNAPSHOT.jar app.jar

ENV JAVA_OPTS=""

EXPOSE 10001

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]