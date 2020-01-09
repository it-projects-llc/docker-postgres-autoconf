ARG BASE_TAG
FROM docker.io/tecnativa/postgres-autoconf:${BASE_TAG}

ENV PGDATA /var/lib/postgresql/data-novolume
# this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
