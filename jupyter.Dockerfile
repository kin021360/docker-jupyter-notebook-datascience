FROM jupyter/datascience-notebook:latest
MAINTAINER Nathan Lam

RUN pip install graphviz

USER root

COPY training.csv /home/training.csv
COPY testing.csv /home/testing.csv
COPY wine.csv /home/wine.csv
COPY wine.data /home/wine.data
RUN (chmod 777 /home/training.csv && chmod 777 /home/testing.csv)
RUN (chmod 777 /home/wine.csv && chmod 777 /home/wine.data)

RUN apt-get update
RUN apt-get install -y graphviz
