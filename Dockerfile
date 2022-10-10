FROM node:latest
WORKDIR /usr/src/app
//COPY nodeapp/* /
COPY package*.json ./
RUN npm install
EXPOSE 3000
CMD [ "npm","start" ]
