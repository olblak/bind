FROM ubuntu:trusty
RUN apt-get install -y bind9 dnsutils
RUN ln -f -s /etc/bind/local/named.conf.local /etc/bind/
RUN mkdir /var/run/named

EXPOSE 53 53/udp

# config files
VOLUME ["/etc/bind/local"]

CMD /usr/sbin/named -g
