# Imatge base de Gotenberg v8
FROM gotenberg/gotenberg:8

# Aixequem permisos per instal·lar
USER root

# Solució al problema de lock i permisos
RUN mkdir -p /var/lib/apt/lists/partial && \
    apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

# Tornem a l'usuari original per seguretat
USER gotenberg

# Exposem el port per Railway
EXPOSE 3000

# Comanda per arrencar el servidor Gotenberg
CMD ["gotenberg"]
