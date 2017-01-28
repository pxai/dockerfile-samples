# Static nginx scenario
Using nginx

Just run:
```
docker build -t pello/nginx .
docker run -d --name my-running-nginx -p 8888:80 -p 8443:443 pello/nginx
```

# Remove
```
docker rm -f my-running-nginx
```
