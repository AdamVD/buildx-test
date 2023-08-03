# Dockerfile
FROM node:14

WORKDIR /app

# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# Install app dependencies
RUN --mount=type=cache,target=/root/.npm npm install

COPY . .

CMD [ "node", "app.js" ]

