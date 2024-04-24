FROM node:hydrogen-bookworm-slim

RUN apt update && \
    apt install -y openssl

WORKDIR /app

RUN npm install -g @nestjs/cli

COPY ["package.json", "package-lock.json", "./"]

RUN npm install

COPY . .

CMD npm run start:dev