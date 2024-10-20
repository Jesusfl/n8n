FROM n8nio/n8n

# Definir variables de entorno para la autenticación
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=mi_usuario
ENV N8N_BASIC_AUTH_PASSWORD=mi_contraseña

EXPOSE 5678

CMD ["n8n", "start"]
