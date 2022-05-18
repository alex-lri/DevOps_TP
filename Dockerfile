FROM node:14.16.1-stretch-slim

COPY . /app

WORKDIR /app

RUN npm install
<<<<<<< HEAD

RUN apt-get update && apt-get install -
    rsyslog \
    which \
    tar \
    hostname \
    net-tools \
    wget \
 && rm -rf /var/lib/apt/lists/*
 
=======
RUN yum install -y wget
>>>>>>> 803b563ad73cb3b9dec60c870a2b8d568e698d62
RUN aquasec/trivy image python:3.4-alpine

# RUN npm run build

ENTRYPOINT ["npm", "run", "start"]
