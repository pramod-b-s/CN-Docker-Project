FROM ubuntu
MAINTAINER pramod bs (prmdbs3@gmail.com)
RUN echo hello
RUN ls
run apt-get update && apt-get install -y python2.7
run apt-get install -y python-pip
run pip
run pip install --upgrade pip
run pip install fabric
run apt-get install -y wget
run wget http://caia.swin.edu.au/tools/spp/downloads/spp-0.3.6.tar.gz
run tar -xvzf spp-0.3.6.tar.gz
run ls
run apt-get install -y libpcap0.8-dev
run cd spp-0.3.6 && make
