FROM node:18.19.1
#FROM node:10.16.0

ENV NODE_ENV=dev

RUN true \
    && npm i -g @loopback/cli@5.2.4 \
    && npm install -g pg --save \
    && npm install -g knex@3.1.0 --save \
    && install -d -m 0755 -o node -g node /code \
    && true
 
# make the 'code' folder the current working directory
WORKDIR /code
 
EXPOSE 3000 8000 80

USER node
