#!/bin/bash

service rsyslog start
bin/fledge start
tail -f /var/log/syslog
