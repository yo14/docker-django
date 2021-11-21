FROM ubuntu:20.04
RUN apt-get update --fix-missing
RUN apt-get install python3 python3-pip -y
WORKDIR /docker-django
COPY . .
RUN pip3 install -r requirements.txt
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]