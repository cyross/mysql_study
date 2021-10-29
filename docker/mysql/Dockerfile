FROM mysql:8

ADD ./my.cnf /etc/mysql/my.cnf

RUN chmod 644 /etc/mysql/my.cnf
RUN mkdir -p /var/lib/mysql-files

WORKDIR /work
