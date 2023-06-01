FROM node:lts-alpine
WORKDIR /mikubernetes
COPY package.json ./
RUN npm install
COPY  . . 
EXPOSE 5173
USER node
#RUN sudo chmod +r /saludo2/vite.config.js
CMD ["npm","run","dev"]