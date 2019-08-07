FROM node:alpine

WORKDIR /app

#copy local files to container 
COPY ./package.json ./
RUN npm install
COPY ./ ./

CMD ["npm", "start"]

EXPOSE 8081