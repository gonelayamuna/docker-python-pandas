FROM ubuntu
RUN apt-get update -y
#Installing python
ENV DEBIAN_FRONTEND=noninteractive
# Installing Python
RUN apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    apt-get -y update && \
    apt-get install -y python3
#RUN ln -s /usr/bin/python3 /usr/bin/python
#RUN python3 -m venv && \
 #   source venv/bin/activate
RUN apt install -y python3-pip
RUN pip install pandas
RUN pip install requests
RUN apt-get -y update && \
    apt-get install -y python3-pdfkit
RUN apt-get install wget
RUN apt-get install pandoc -y

ADD https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.3/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz /usr/bin/
RUN tar vxf /usr/bin/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz 
RUN chmod 777 /wkhtmltox/bin
RUN cp /wkhtmltox/bin/wk* /usr/bin
#COPY wkhtmltox/bin/wk* /usr/bin
RUN rm /usr/bin/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz
RUN ln -s /usr/bin/python3 /usr/bin/python 
#Installing openpyxl
RUN pip install openpyxl
