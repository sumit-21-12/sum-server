FROM node:22

WORKDIR /app

COPY ./package-lock.json ./package-lock.json 
COPY ./package.json ./package.json


RUN npm install

COPY . .

EXPOSE 8080

CMD ["node","index.js"]