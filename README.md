# Ansible Target

Docker image used for testing Ansible playbooks from an [ansible_playbook](https://github.com/philm/ansible_playbook) Docker container.

Essentially this is a test-friendly SSH server with an "Ubuntu" user and other optimizations.

Example Usage:
```
docker run -d -p 2222:22 --name ansible_test -v ~/.ssh/id_rsa.pub:/home/ubuntu/.ssh/authorized_keys philm/ansible_target:latest
```

Note: certain privileged operations might not work without [additional configuration](https://docs.docker.com/engine/reference/commandline/run/#full-container-capabilities-privileged).

Disclaimer: this image is intended for educational purposes. Feel free to use it as base image for your own Docker test images, or submit a pull request.
