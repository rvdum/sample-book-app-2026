FROM node:26
LABEL DESCRIPTION="Docker image for book app service"

WORKDIR /app
COPY  package.json .
COPY index.js index.js

RUN npm install

EXPOSE 1050

ENTRYPOINT [ "node" ]
CMD [ "index.js" ]