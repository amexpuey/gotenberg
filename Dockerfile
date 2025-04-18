FROM gotenberg/gotenberg:8

# Canviem a root per poder instal·lar
USER root

RUN mkdir -p /var/lib/apt/lists/partial && \
    apt-get update && \
    apt-get install -y curl  # o el que necessitis

# Tornem a l’usuari original per seguretat
USER gotenberg

EXPOSE 3000

CMD ["gotenberg"]
