# This is just a comment.
FROM mysql
MAINTAINER Pello Altadill
# We copy our db config and dump
COPY mysql/ /etc/
ADD dump/series.sql.gz /docker-entrypoint-initdb.d

ENV MYSQL_DATABASE=series \
    MYSQL_USER=seriesuser \
    MYSQL_PASSWORD=secret \
    MYSQL_ROOT_PASSWORD=secret

EXPOSE 3306:3306
CMD ["mysqld"]
