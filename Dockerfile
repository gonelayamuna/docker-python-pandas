FROM ubuntu
RUN apt-get update -y
#Installing python
ENV DEBIAN_FRONTEND=noninteractive
# Installing Python
RUN apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    apt-get -y update && \
    apt-get install -y python3
RUN apt install -y python3-pip
RUN pip install pandas
RUN ln -s /usr/bin/python3 /usr/bin/python 
