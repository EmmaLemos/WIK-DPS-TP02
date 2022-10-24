FROM node:lts as builder

# Create app directory
WORKDIR /build

# Install app dependencies
COPY package*.json ./
COPY package-lock.json ./

RUN npm i

COPY . .

# build le js 
RUN npx tsc 
# création de l'utilisateur
RUN useradd -r util

USER util

CMD node build/index.js 