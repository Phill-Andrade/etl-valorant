FROM jupyter/pyspark-notebook:ubuntu-22.04

USER root

ENV SPARK_HOME=/usr/local/spark-3.5.0-bin-hadoop3
ENV PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin
ENV PYSPARK_PYTHON=/usr/bin/python3
ENV PYSPARK_DRIVER_PYTHON=/usr/local/bin/start-notebook.sh

RUN apt-get update && \
    apt-get upgrade -y && \
    usermod -aG sudo jovyan && \
    passwd -d jovyan

USER jovyan

WORKDIR /home/jovyan/repos/Valorant

CMD pyspark
