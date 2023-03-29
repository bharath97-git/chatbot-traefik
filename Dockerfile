FROM scratch
COPY script/ca-certificates.crt /etc/ssl/certs/
COPY dist/traefik /
EXPOSE 80
VOLUME ["/tmp"]
RUN chmod +x /traefik
ENTRYPOINT ["./traefik"]
