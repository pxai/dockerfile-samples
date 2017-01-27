# This is just a comment.
FROM openjdk:alpine
MAINTAINER Pello Altadill
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN javac -d bin src/io/pello/docker/Main.java
CMD ["java","-cp","bin","io.pello.docker.Main"]
