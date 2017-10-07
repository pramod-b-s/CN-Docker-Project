FROM ubuntu
MAINTAINER pramod bs (prmdbs3@gmail.com)
RUN echo hello
RUN ls
run apt-get update && apt-get install -y python2.7
run apt-get install -y python-pip
run pip
run pip install --upgrade pip
run pip install fabric