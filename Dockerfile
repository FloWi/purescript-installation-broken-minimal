FROM node:16-buster

RUN apt update && apt install libtinfo5 libncurses5-dev -y
RUN npm install -g npm

COPY ./ /build

WORKDIR /build

RUN npm install

# ENTRYPOINT [ "npx", "spago", "test" ]
