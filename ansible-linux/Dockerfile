from debian:jessie

# We just need ssh
run apt-get update && \
    apt-get install -y ssh && \
    rm -rf /var/lib/apt/lists/*

# This will add keys and necessary config
add ./docker-ansible.pub /docker-ansible.pub
add ./entrypoint.sh /entrypoint.sh

entrypoint ["/entrypoint.sh"]
