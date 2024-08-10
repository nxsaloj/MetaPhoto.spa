FROM node:20.15.1-alpine

WORKDIR /home/app/

RUN apk update && \
    rm -rf /var/lib/apt/lists/* && \
    yarn global add @vue/cli

COPY package.json yarn.lock* .yarnrc* ./

RUN yarn --non-interactive

COPY . .

EXPOSE 5173
ENTRYPOINT ["sh","entrypoint.sh"]