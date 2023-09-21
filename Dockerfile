FROM node:16-alpine
WORKDIR  /var/lib/jenkins/workspace/piyushscript
COPY . .
RUN npm install
EXPOSE 3000
CMD [ "npm", "start" ]
