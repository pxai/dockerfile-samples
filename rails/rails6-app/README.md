# Rails 6 docker
Using rails

Just run:
```
docker build -t pello/rails6-app .
docker container rm my-rails6-app
docker run -dit --name my-rails6-app -p 8888:3000 pello/rails6-app
```

# Remove
```
docker rm -f my-rails6-app;
docker rm -f my-rails6-app && docker rmi -f pello/rails6-app
```

# Shell
```shell
docker exec -ti my-rails6-app bash
```
