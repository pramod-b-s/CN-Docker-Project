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
run wget http://caia.swin.edu.au/tools/teacup/downloads/teacup-public-1.0.tar.gz
run tar -xvzf teacup-public-1.0.tar.gz
run ls
run cd teacup-1.0/tools/ && tar -xvzf iperf-2.0.5-mod.tar.gz && cd iperf-2.0.5-mod && ./configure && make && make install
run cd teacup-1.0/tools/ && tar -xvzf nttcp-1.47-mod.tar.gz && cd nttcp-1.47-mod/ && make
run cd teacup-1.0/tools/ && tar -xvzf httperf-0.8-mod.tar.gz && cd httperf-0.8-mod/ && ./configure && make
