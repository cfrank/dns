#!/bin/bash
set -e
CONF_FILE=/etc/unbound/unbound.conf.d/pirate.dns.allowed.ips.conf
IP_TO_ADD=$1

if [ -z "$IP_TO_ADD" ]; then
	exit;
fi

printf "\taccess-control: $IP_TO_ADD allow\n" >> $CONF_FILE

unbound-checkconf && systemctl restart unbound
