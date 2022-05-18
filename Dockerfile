FROM node:14.16.1-stretch-slim

COPY . /app

WORKDIR /app

RUN npm install

RUN apt-get update && apt-get install -
    rsyslog \
    which \
    tar \
    hostname \
    net-tools \
    wget \
 && rm -rf /var/lib/apt/lists/*
 
RUN aquasec/trivy image python:3.4-alpine

# RUN npm run build

ENTRYPOINT ["npm", "run", "start"]
