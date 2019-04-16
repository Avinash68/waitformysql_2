FROM python:2.7
ENV env 1
RUN apt-get update && apt-get install mysql-client -y
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
#CMD ["/bin/bash", "start.sh"]