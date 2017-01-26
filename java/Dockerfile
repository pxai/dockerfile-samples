FROM openjdk:alpine
MAINTAINER Pello Altadill
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN javac -d . src/io/pello/docker/Main.java
CMD ["java", "io.pello.docker.Main"]
