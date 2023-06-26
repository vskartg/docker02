FROM node:20-alpine3.17
WORKDIR /app/
COPY package.json package.json
RUN npm install 
COPY src .
CMD ["node", "/app/index.js"]
