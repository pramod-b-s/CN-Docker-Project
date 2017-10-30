# Script to install Linux 3.17 kernel on 64 bit Ubuntu system 

#!/bin/bash
sudo wget http://kernel.ubuntu.com/~kernel-
ppa/mainline/v3.17-utopic/linux-headers-3.17.0-031700-
generic_3.17.0-031700.201410060605_i386.deb

#!/bin/bash
sudo wget http://kernel.ubuntu.com/~kernel-
ppa/mainline/v3.17-utopic/linux-headers-3.17.0-031700_3.17.0-
031700.201410060605_all.deb

#!/bin/bash
sudo wget http://kernel.ubuntu.com/~kernel-
ppa/mainline/v3.17-utopic/linux-image-3.17.0-031700-
generic_3.17.0-031700.201410060605_i386.deb

#!/bin/bash
sudo dpkg -i linux-headers-3.17.0-*.deb linux-image-
3.17.0-*.deb

#!/bin/bash
sudo reboot