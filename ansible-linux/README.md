# ansible-linux
Simple linux image with python/ansible/ssh access, ready to be managed with ansible from the host machine.
This linux can be run and you can try ansible playbooks on it.
The docker machine stays alive so you can manually check if commands ran correctly.

## Generate ssh keys
If you want to be able to run playbooks through ssh, it's convenient to allow direct access.
First execute create-ssh-keys.sh and copy the private file to your $HOME/.ssh dir


## Building
```bash
docker build -t my-ansible-image . 
 ```

## Running:
```bash
docker run --net host -v /home/pello/.ssh:/hostssh -dti  --name my-container-for-ansible my-ansible-image 
```

## Logging in
```
ssh root@localhost
```

Or with docker exec:
```bash
docker exec -ti <container-id> bash
```

## Running playbooks
Now from your host machine, you can launch this recipes against your docker container
```
ansible all -i "localhost," -m raw -a "apt-get install -y python-minimal"
ansible-playbook -i "localhost," playbook-file.yml

## Removing

```bash
docker container stop my-container-for-ansible
docker container rm my-container-for-ansible
docker image rm my-ansible-image
```