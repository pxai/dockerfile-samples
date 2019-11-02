# ansible-linux
Simple linux image with python/ansible/ssh access, ready to be managed with ansible from the host machine.
This linux can be run and you can try ansible playbooks on it.
The docker machine stays alive so you can manually check if commands ran correctly.

## Running:
```bash
docker run --net host -v /home/pello/.ssh:/hostssh -dti  --name my-container-for-ansible my-ansible-image 
```

## Logging in
```
ssh localhost
```

Or with docker exec:
```bash
docker exec -ti <container-id> bash
```

## Removing

```bash
docker container stop my-container-for-ansible
docker container rm my-container-for-ansible
docker image rm my-ansible-image
```