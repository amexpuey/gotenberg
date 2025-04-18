FROM gotenberg/gotenberg:8

USER root

# Fix per errors de permisos amb apt
RUN mkdir -p /var/lib/apt/lists/partial && \
    apt-get update && \
    apt-get install -y curl

USER gotenberg

# Exposa el port que Gotenberg fa servir
EXPOSE 3000

# Comanda per executar Gotenberg
CMD ["gotenberg"]
