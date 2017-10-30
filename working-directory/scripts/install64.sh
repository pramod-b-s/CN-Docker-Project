# Script to install Linux 3.17 kernel on 64 bit Ubuntu system 

#!/bin/bash
sudo wget http://kernel.ubuntu.com/~kernel-
ppa/mainline/v3.17-utopic/linux-headers-3.17.0-031700-
generic_3.17.0-031700.201410060605_amd64.deb

sudo wget http://kernel.ubuntu.com/~kernel-
ppa/mainline/v3.17-utopic/linux-headers-3.17.0-031700_3.17.0-
031700.201410060605_all.deb

sudo wget http://kernel.ubuntu.com/~kernel-
ppa/mainline/v3.17-utopic/linux-image-3.17.0-031700-
generic_3.17.0-031700.201410060605_amd64.deb

sudo dpkg -i linux-headers-3.17.0-*.deb linux-image-
3.17.0-*.deb

sudo reboot