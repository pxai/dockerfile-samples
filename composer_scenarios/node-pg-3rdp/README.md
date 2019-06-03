# Docker Compose Scenario: MEAN
Three containers linked with Docker Composer
-node:boron
-mongo
-nginx

# node + express
Node.js project with express and mongoose

# nginx
Nginx with load balancing

# mongodb
Mongodb database

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