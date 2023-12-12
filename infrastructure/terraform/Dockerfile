FROM python:3.9-alpine

# Install Ansible dependencies
RUN apk add --no-cache \
    bash \
    ca-certificates \
    musl \
    openssl \
    libffi \
    openssh-client \
    rsync \
    git \
    sshpass

# Install Ansible using pip
RUN pip install ansible
