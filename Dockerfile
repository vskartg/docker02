FROM node:20-alpine3.17
RUN mkdir /app 
COPY package.json /app/package.json
RUN cd /app && npm install 
COPY src/ /app/
# WORKDIR /
# CMD ["node", "/app/src/app.js"]
ENTRYPOINT ["docker-entrypoint.sh"]
