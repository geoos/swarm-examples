# docker build -f node14-python3-arm.dockerfile -t docker.homejota.net/geoos/node14-python3-arm:latest -t docker.homejota.net/geoos/node14-python3-arm:0.9 .
# docker push docker.homejota.net/geoos/node14-python3-arm:latest

# docker build -f node14-python3.dockerfile -t geoos/node14-python3:latest -t geoos/node14-python3:0.8 .
# docker push geoos/node14-python3:latest

FROM node:14-alpine

LABEL author="Jorge Jiménez <otrojotaj@gmail.com>"

RUN apk add python3 py3-pip
RUN ["pip3", "install", "motuclient"]