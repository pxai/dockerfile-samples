# Static apache httpd scenario
Using httpd

Just run:
```
docker build -t pello/httpd .
docker run -dit --name my-running-app -p 8888:80 pello/httpd
```

# Remove
```
docker rm -f my-running-app;
```
