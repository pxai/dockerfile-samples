# Mongo database scenario
Using mysql

Just run:
```
$ docker build -t pello/mongo .
```
# Persistent datadir
First create a volume
```
docker volume create --name mongodata
```
Use this as a parameter to run:

Be careful when running with --rm option. ¿Do you really want to delete?
```
$ docker run -d --name pello-mongo -v mongodata:/data pello/mongo
```

# Run the bash shell
```
docker exec -it pello-mongo bash
```
