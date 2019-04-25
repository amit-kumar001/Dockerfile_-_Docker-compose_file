FROM ubuntu:16.04
RUN apt-get update

RUN apt-get install -y python-pip python-dev build-essential
RUN apt-get install -y libmysqlclient-dev

COPY . /nlp_starts_product
WORKDIR /nlp_starts_product


RUN xargs -a requirements2.txt apt install -y
RUN pip install -r requirements.txt
