#!/bin/sh

if [ ! -f /etc/dhcp/dhcpd.conf ]; then
    echo "No configuration file found"
    exit 1;
fi

if [ ! -f /var/lib/dhcpd/dhcpd.leases ]; then
    touch /var/lib/dhcpd/dhcpd.leases
fi

