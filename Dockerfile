FROM nginx:stable

COPY gen_crt.sh /docker-entrypoint.d/
RUN chmod +x /docker-entrypoint.d/gen_crt.sh
