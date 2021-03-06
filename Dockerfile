# Dockerfile
FROM node:8
WORKDIR /opt/cboard-api/
COPY . /opt/cboard-api/

RUN npm install -g node-gyp 
RUN npm install --silent
RUN npm install -g swagger

EXPOSE 80 10010
CMD [ "npm", "start"]