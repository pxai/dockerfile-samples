from debian:jessie

run apt-get update && \
    apt-get install -y ansible ssh && \
    rm -rf /var/lib/apt/lists/*

add ./docker-ansible.pub /docker-ansible.pub
add ./config/ansible.cfg /etc/ansible/ansible.cfg
add ./entrypoint.sh /entrypoint.sh

entrypoint ["/entrypoint.sh"]
