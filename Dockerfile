# Ubuntu version
FROM ubuntu:trusty

# Installing starter packages
RUN apt-get update \
 && apt-get -y install wget \
 && sudo apt-get -y install build-essential \
 && apt-get -y install python

# Installing pip
RUN wget https://bootstrap.pypa.io/get-pip.py \
 && python get-pip.py

# Installing mezzaninne packages
RUN apt-get -y install libjpeg8 libjpeg8-dev \
 && apt-get -y build-dep python-imaging

# Installing mezzaninne source
RUN pip install mezzanine

CMD ["bash"]
