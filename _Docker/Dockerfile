FROM ubuntu:16.04

# Update OS
RUN sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list
RUN apt-get update -y
RUN apt-get -y upgrade
RUN apt-get install -y apt-utils 
RUN apt-get install -y python-pip python-dev build-essential
RUN apt-get install -y git gzip wget unzip 
RUN pip install Flask
RUN pip install flask
RUN wget https://github.com/MourIdri/PyFlaskTest/archive/master.zip  \
    && unzip master.zip && cd PyFlaskTest-master/_app/ && ls -l && mkdir /_app && cp -r * /_app && pwd && ls -l
RUN pwd && ls -l

#RUN mkdir /_app
#COPY ./PyFlaskTest-master/_app/ /_app
#RUN cd /PyFlaskTest-master/_app/ && pwd && ls -l
WORKDIR /_app

# Set the default directory for our environment
#ENV HOME /webapp/v9_Docker/application/
#WORKDIR /webapp/v9_Docker/application/

EXPOSE 5000

RUN ls -l 
RUN pwd && ls -l
RUN pwd


#ENTRYPOINT ["python"]
CMD ["python","-u","web_flask_server.py"]
#CMD ["python","-u","app.py"]
