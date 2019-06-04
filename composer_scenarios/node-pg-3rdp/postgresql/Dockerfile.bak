# This is just a comment.
FROM mongo
MAINTAINER Pello Altadill

# With this, we plan to use data/db as external storage
#VOLUME ["/data/db"]

# Copy dumped db and restore
WORKDIR /home
COPY dump /home/dump
CMD mongod --smallfiles --fork --syslog; mongorestore

EXPOSE 27017:27017

