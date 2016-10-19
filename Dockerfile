FROM ubuntu:12.04

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install python-setuptools
RUN easy_install pip

RUN mkdir /opt/effective-testing
RUN git clone git://github.com/MarceloCorpucci/effective-testing.git /opt/effective-testing
RUN pip install -r /opt/effective-testing/requirements.txt
RUN python /opt/effective-testing/main.py &

WORKDIR /opt/effective-testing	