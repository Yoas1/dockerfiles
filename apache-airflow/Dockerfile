FROM ubuntu:20.04

ARG VERSION=2.0.1 PYV=3.8

RUN apt update && \
    apt install software-properties-common -y && \
    [enter] | apt-add-repository universe && \
    apt update && \
    apt-get install python-setuptools -y && \
    apt install python3-pip -y && \
    apt install libmysqlclient-dev -y && \
    apt install libssl-dev -y && \
    apt install libkrb5-dev -y && \
    mkdir ~/airflow && cd ~/airflow && \
    mkdir dags && chmod 777 dags && \
    export AIRFLOW_HOME=~/airflow && \
    pip3 install apache-airflow==$VERSION \
    --constraint https://raw.githubusercontent.com/apache/airflow/constraints-$VERSION/constraints-$PYV.txt && \
    airflow db init && \
    chmod -R 777 ~/airflow && \
    airflow db init && \
    airflow users create \
    --username admin \
    --firstname admin\
    --lastname admin \
    --role Admin \
    --password admin \
    --email admin@admin.com


ENTRYPOINT [ "/bin/bash", "-c", "airflow webserver -p 8080 & airflow scheduler" ]


