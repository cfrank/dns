#!/bin/bash
set -e
CONF_FILE=/etc/unbound/unbound.conf.d/unbound-adhosts.conf
> $CONF_FILE
echo 'server:' >> $CONF_FILE
(curl --silent https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts | grep '^0\.0\.0\.0' | sort) | awk '{print "\tlocal-zone: \""$2"\" always_nxdomain"}' >> $CONF_FILE
unbound-checkconf && systemctl restart unbound
