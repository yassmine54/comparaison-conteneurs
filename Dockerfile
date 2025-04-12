# Utilise une image Nginx légère
FROM nginx:alpine

# Copie ton index.html dans le dossier par défaut de Nginx
COPY index.html /usr/share/nginx/html/index.html

# Expose le port 8000
EXPOSE 8000

# Démarre Nginx
CMD ["nginx", "-g", "daemon off;"]