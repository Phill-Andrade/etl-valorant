FROM jupyter/pyspark-notebook:ubuntu-22.04

USER root

ENV SPARK_HOME=/usr/local/spark-3.4.1-bin-hadoop3
ENV PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin
ENV PYSPARK_PYTHON=/usr/bin/python3
ENV PYSPARK_DRIVER_PYTHON=jupyter
#ENV PYSPARK_DRIVER_PYTHON_OPTS=/usr/local/bin/start-notebook.sh

RUN apt-get update &&\
    apt-get upgrade &&\
    usermod -aG sudo jovyan &&\
    passwd -d jovyan

USER jovyan

WORKDIR /home/jovyan/repos/Valorant

COPY requirements.txt /home/jovyan/repos/Valorant

RUN pip install --upgrade pip &&\
    pip install -r /home/jovyan/repos/Valorant/requirements.txt

#USER root

CMD pyspark
