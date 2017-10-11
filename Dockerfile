FROM ubuntu
MAINTAINER pramod bs (prmdbs3@gmail.com)
RUN echo Sit back and relax while this docker image takes care of TEACUP setup !
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
run apt-get install -y r-base
run apt-get install -y pdfjam
run pip install pexpect 3-1
run wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.17-utopic/linux-headers-3.17.0-031700-generic_3.17.0-031700.201410060605_amd64.deb
run wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.17-utopic/linux-headers-3.17.0-031700_3.17.0-031700.201410060605_all.deb
run wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.17-utopic/linux-image-3.17.0-031700-generic_3.17.0-031700.201410060605_amd64.deb