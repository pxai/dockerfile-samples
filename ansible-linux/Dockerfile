from debian:jessie

run apt-get update && \
    apt-get install -y ansible ssh && \
    rm -rf /var/lib/apt/lists/*

entrypoint ["/entrypoint.sh"]
