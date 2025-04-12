# Utilise une image Nginx légère
FROM nginx:alpine

# Copie ton index.html dans le dossier par défaut de Nginx
COPY index.html /usr/share/nginx/html/index.html

# Expose le port 80
EXPOSE 80

# Démarre Nginx
CMD ["nginx", "-g", "daemon off;"]
