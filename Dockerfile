FROM alpine:latest

ENV \
  PGBOUNCER_DIR=/etc/pgbouncer \
  PGBOUNCER_LOG_DIR=/var/log/pgbouncer

RUN apk add --no-cache pgbouncer

RUN \
  mkdir -p $PGBOUNCER_DIR \
  mkdir -p $PGBOUNCER_LOG_DIR

USER pgbouncer

EXPOSE 6543

CMD pgbouncer -d $PGBOUNCER_DIR/pgbouncer.ini
