
FROM fedora:latest

RUN dnf -y upgrade

from fedora:latest
run dnf -y upgrade
run dnf -y install tuxpaint vim httpd
ADD myinfo.html /var/www/html/
EXPOSE 80/tcp
ENTRYPOINT ["/usr/sbin/httpd", "-DFOREGROUND"]
