#!/usr/bin/env bash
set -eo pipefail

# # enable syslog daemon so that SSHD log file is created
syslogd

# start SSH daemon
/usr/sbin/sshd -D
