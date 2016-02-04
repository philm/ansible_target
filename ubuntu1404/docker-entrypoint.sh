#!/usr/bin/env bash
set -eo pipefail

# enable rsyslog daemon so that SSHD log file is created
rsyslogd

# start SSH daemon
/usr/sbin/sshd -D
