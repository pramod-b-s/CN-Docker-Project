FROM ubuntu:14.04
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
run cd /usr/src && wget https://www.linux-mips.org/pub/linux/mips/kernel/v3.x/linux-3.17.4.tar.xz
run cd /usr/src/ && tar -xvf linux-3.17.4.tar.xz
run cd /usr/src/linux-3.17.4 && wget https://www.web10g.org/images/Software/Web10G_Kernel_Patch_and_API_Packages/web10g-userland-2.0.9.tar.gz
run cd /usr/src/linux-3.17.4 && tar -xvf web10g-userland-2.0.9.tar.gz && ls && cd web10g-userland-2.0.9 && ls && cd .. && patch -p1 < /usr/src/linux-3.17.4/web10g-userland-2.0.9/web10g-0.11-3.17.diff
