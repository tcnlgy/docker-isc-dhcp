FROM alpine:latest

RUN apk add --no-cache dhcp

EXPOSE 67/udp 67/tcp

VOLUME /etc/dhcp

ADD bin/setup.sh setup
CMD setup

CMD ["/usr/sbin/dhcpd", "-4", "-f", "-d", "--no-pid", "-cf", "/etc/dhcp/dhcpd.conf"]
