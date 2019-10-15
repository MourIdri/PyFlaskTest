FROM ubuntu:16.04

# Update OS
RUN sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list
RUN apt-get update -y
RUN apt-get -y upgrade
RUN apt-get install -y apt-utils 
RUN apt-get install -y python-pip python-dev build-essential
RUN apt-get install -y git gzip wget unzip
RUN git clone https://github.com/MourIdri/PyFlaskTest.git \
&& cd _app/
COPY . /_app
WORKDIR /_app

# Set the default directory for our environment
#ENV HOME /webapp/v9_Docker/application/
#WORKDIR /webapp/v9_Docker/application/

EXPOSE 50

RUN ls -l 
RUN pwd 

#ENTRYPOINT ["python"]
CMD ["python","-u","web_flask_server.py"]
#CMD ["python","-u","app.py"]
