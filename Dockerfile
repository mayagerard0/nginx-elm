FROM node

RUN curl -L -o elm.gz https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz
RUN gunzip elm.gz
RUN chmod +x elm
RUN mv elm /usr/bin
RUN npm install -g uglify-js 
RUN apt update 
RUN apt install -y nginx
RUN nginx

WORKDIR elmApp



