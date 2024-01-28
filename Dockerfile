FROM node:18-alpine as build-stage

USER root

WORKDIR /app

RUN corepack enable
RUN corepack prepare pnpm@8.6.10 --activate

RUN npm config set registry https://registry.npmmirror.com

COPY ./app .

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk update

# 设置时区 时间
RUN apk add tzdata
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/Shanghai" > /etc/timezone

RUN apk add curl wget vim git unzip

CMD pnpm install --frozen-lockfile && pnpm dev