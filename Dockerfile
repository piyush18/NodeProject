# FROM node:16-alpine
# WORKDIR ./
# COPY . .
# RUN npm install
# EXPOSE 8080
# CMD [ "npm", "start" ]
FROM node:16-alpine
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY src/package.json src/package-lock.json .
RUN npm install
COPY src/ .
EXPOSE 3000
CMD [ "npm", "start"]