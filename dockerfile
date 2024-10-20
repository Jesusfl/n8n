# Usa la imagen oficial de Node.js compatible
FROM node:18.17.0

# Crea un directorio de trabajo para n8n
WORKDIR /data

# Instala n8n globalmente
RUN npm install -g n8n

# Expone el puerto que n8n usa por defecto
EXPOSE 5678

# Ejecuta n8n forzándolo a escuchar en todas las interfaces (0.0.0.0)
CMD ["n8n", "start", "--tunnel"]
