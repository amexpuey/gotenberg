FROM gotenberg/gotenberg:8

# Exposa el port correcte per Railway
EXPOSE 3000

# Comanda per arrencar el servei
CMD ["gotenberg"]
