# Docker Compose Scenario: LAMP
Two containers linked with Docker Composer
-nimmis/apache-php5  : php5 with mysql
-mysql

Just run:
```
$ docker-compose up -d
```
# In the same directory where docker-compose.yml is
## stop
Options
```
$ docker-compose stop
```
## start
```
$ docker-compose start
```
## restart
```
$ docker-compose restart
```
## remove, after stop
```
$ docker-compose rm -f
```
Remove all
```
docker rm $(docker ps -a -q)
```