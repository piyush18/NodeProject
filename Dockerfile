FROM node:16-alpine
WORKDIR  /
COPY . .
RUN npm install
EXPOSE 8080
CMD [ "npm", "start" ]
