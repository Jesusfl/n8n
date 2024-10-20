# Usa la imagen oficial de n8n desde Docker Hub
FROM n8nio/n8n:latest

# Define variables de entorno, si necesitas alguna configuración específica
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=mi_usuario
ENV N8N_BASIC_AUTH_PASSWORD=mi_contraseña

# Expone el puerto 5678, que es el puerto por defecto de n8n
EXPOSE 5678

# Comando para iniciar n8n
CMD ["n8n"]
