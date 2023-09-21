FROM node:16-alpine
WORKDIR  /var/lib/jenkins/workspace/piyushscript
COPY . .
RUN yum install npm
EXPOSE 8080
CMD [ "npm", "start" ]
