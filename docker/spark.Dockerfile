FROM ubuntu:22.04

ENV SPARK_HOME=/mnt/spark
ENV PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install sudo -y && \
    apt-get install default-jdk -y && \
    apt-get install wget -y && \
    apt-get install python3 -y && \
    apt-get install pip -y && \
    pip install poetry

RUN useradd -m -s /bin/bash ubuntu && \
    usermod -aG sudo ubuntu && \
    passwd -d ubuntu

RUN wget https://dlcdn.apache.org/spark/spark-3.5.0/spark-3.5.0-bin-hadoop3.tgz && \
    tar -xzf spark-3.5.0-bin-hadoop3.tgz && \
    mv spark-3.5.0-bin-hadoop3 /mnt/spark

USER ubuntu

WORKDIR /home/ubuntu/repos/Valorant

CMD poetry run pyspark
