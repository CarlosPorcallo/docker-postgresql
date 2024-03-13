FROM postgres:${DOCKER_IMAGE}

COPY ./config/postgresql.conf /etc/postgresql-common/postgresql.conf
COPY ./config/pg_hba.conf /etc/postgresql-common/pg_hba.conf
RUN apt-get update && apt-get upgrade

CMD ["postgres", "-c", "config_file=/etc/postgresql-common/postgresql.conf"]