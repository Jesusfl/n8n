# Usa la imagen oficial de Node.js como base
FROM node:16

# Crea un directorio de trabajo para n8n
WORKDIR /data

# Instala n8n globalmente
RUN npm install -g n8n

# Expone el puerto que n8n usa por defecto
EXPOSE 5678

# Ejecuta n8n cuando el contenedor arranque
CMD ["n8n"]
