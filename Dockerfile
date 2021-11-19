FROM ubuntu:20.04
RUN apt-get update --fix-missing
RUN apt-get install python3 python3-pip -y
COPY . /docker-django/
WORKDIR /docker-django
RUN pip3 install -r requirements.txt