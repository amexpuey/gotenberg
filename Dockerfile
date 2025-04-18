# Usa la imatge oficial de Gotenberg
FROM gotenberg/gotenberg:8

# Port exposat (Railway escolta el 3000 per defecte)
EXPOSE 3000

# Executa el servidor de Gotenberg
CMD ["gotenberg"]
