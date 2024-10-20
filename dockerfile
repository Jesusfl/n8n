# Usa la imagen oficial de Node.js como base
FROM node:16

# Crea un directorio de trabajo para n8n
WORKDIR /data

# Instala n8n globalmente
RUN npm install -g n8n

# Instala pm2 para manejar procesos en el contenedor
RUN npm install -g pm2

# Expone el puerto que n8n usa por defecto
EXPOSE 5678

# Utiliza pm2 para ejecutar n8n
CMD ["pm2-runtime", "n8n"]
