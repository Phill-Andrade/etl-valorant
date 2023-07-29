FROM ubuntu:22.04

RUN apt-get update &&\
    apt-get upgrade -y &&\
    apt-get install sudo -y &&\
    apt-get install default-jdk -y &&\
    apt-get install wget -y &&\
    apt-get install python3 -y &&\
    apt-get install pip -y &&\
    useradd -m -s /bin/bash ubuntu &&\
    usermod -aG sudo ubuntu &&\
    passwd -d ubuntu &&\
    wget https://dlcdn.apache.org/spark/spark-3.4.0/spark-3.4.0-bin-hadoop3.tgz &&\
    tar -xzf spark-3.4.0-bin-hadoop3.tgz &&\
    mv spark-3.4.0-bin-hadoop3 /mnt/spark &&\
    echo 'export SPARK_HOME=/mnt/spark' >> ~/.bashrc &&\
    echo 'export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin' >> ~/.bashrc

USER ubuntu

WORKDIR /home/ubuntu/repos/Valorant

COPY requirements.txt /home/ubuntu/repos/Valorant

RUN pip install --upgrade pip &&\
    pip install --no-cache-dir -r requirements.txt
