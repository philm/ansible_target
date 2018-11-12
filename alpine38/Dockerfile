FROM alpine:3.8

RUN \
  apk add --no-cache \
    bash \
    bash-completion \
    openrc \
    openssh \
    python \
    shadow \
    sudo && \
# create user - alpine - for ssh access and enable sudo operations \
  addgroup -S alpine && \
  adduser -S alpine -G alpine -s /bin/bash -h /home/alpine && \
  usermod -p alpine alpine && \
  echo 'alpine ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers && \
  su - alpine -c "mkdir -p ~/.ssh && chmod 0700 ~/.ssh && chmod -s ~/.ssh" && \
# Various options to make SSH access easier when testing Ansible playbooks \
# also make the keys that the sshd daemon needs \
  sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && \
  sed -i "s/StrictModes.*/StrictModes no/g" /etc/ssh/sshd_config && \
  /usr/bin/ssh-keygen -A

COPY docker-entrypoint.sh /
CMD ["/docker-entrypoint.sh"]

EXPOSE 22
