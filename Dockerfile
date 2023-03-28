FROM nginx:stable

COPY gen_crt.sh /docker-entrypoint.d/
