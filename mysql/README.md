# Mysql Server scenario
Using mysql

Just run:
```
$ docker build -t pello/mysql .
```
Be careful when running with --rm option. ¿Do you really want to delete?
```
$ docker run -d --name my-pello-mysql pello/mysql
```
# Run mysql container directly
```
docker run -d -n pello-mysql \
-e"MYSQL_ROOT_PASSWORD=secret" \
--publish 3306:3306 \
--volume=/home/docker/my-mysql/conf.d:/etc/mysql/conf.d \
--volume=/home/docker/mysql-datadir:/var/lib/mysql \
mysql
```
# Run the bash shell
```
docker exec -it my-pello-mysql bash
```
