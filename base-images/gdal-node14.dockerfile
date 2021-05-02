# docker build -f gdal-node14.dockerfile -t docker.homejota.net/geoos/gdal-node14:latest -t docker.homejota.net/geoos/gdal-node14:1.1 .
# docker push docker.homejota.net/geoos/gdal-node14:latest

# docker build -f gdal-node14.dockerfile -t geoos/gdal-node14:latest -t geoos/gdal-node14:1.0 .
# docker push geoos/gdal-node14:latest
FROM osgeo/gdal:ubuntu-full-latest

LABEL author="Jorge Jiménez <otrojotaj@gmail.com>"

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt -y install nodejs
RUN apt -y install git

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 10
RUN apt-get install -y python3-pip
RUN ["pip3", "install", "numpy"]
RUN ["pip3", "install", "motuclient"]