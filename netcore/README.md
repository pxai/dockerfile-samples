# .netcore
Using netcore

Just run:
```
docker build -t pello/netcore .
docker container rm my-aspnetcore-app
# docker run -dit --name my-rails6-app -p 8888:3000 pello/netcore
docker run -it --rm -p 8000:80 --name my-aspnetcore-app mcr.microsoft.com/dotnet/samples:aspnetapp
```

# Remove
```
docker rm -f my-aspnetcore-app;
```

# Shell
```shell
docker exec -ti my-rails6-app bash
```

## Check also:
https://github.com/dotnet/dotnet-docker/blob/244804c9b82045e5f8e49ee153ad04c1a59b1cfb/samples/aspnetapp/Dockerfile
