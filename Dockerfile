FROM node
MAINTAINER Med Amine Blibech <blibechmedamine@gmail.com >
# Créer le répertoire de travail
WORKDIR /usr/src/app
# Installer les dépendences
COPY package.json .
RUN npm install
 # Copier votre code à l’intérieur du conteneur
 # pour pouvoir l’utiliser ensuite
 COPY index.js .
# Ouvrir (ou exposer) le port 8080 pour pouvoir
# accéder au serveur à partir de la machine hôte
EXPOSE 8080
# Démarrer le serveur
CMD [ "node", "index.js" ]
