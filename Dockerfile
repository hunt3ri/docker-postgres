FROM postgres:latest

# Setup locale
RUN echo en_US.UTF-8 UTF-8 > /etc/locale.gen
RUN locale-gen en_US.UTF-8

# Add debian unstable repo required for installing gdal 2.
RUN echo deb http://ftp.uk.debian.org/debian unstable main contrib non-free >> /etc/apt/sources.list
RUN apt-get update

# install ogr2ogr and gdal
RUN apt-get -t unstable install -y gdal-bin
RUN apt-get install -y python3
RUN apt-get install -y postgis

ENV POSTGRES_USER postgres
ENV POSTGRES_DB data-loader
ENV POSTGRES_PASSWORD postgres
