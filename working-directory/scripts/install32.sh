# Script to install Linux 3.17 kernel on 32 bit Ubuntu system

#!/bin/bash
cp 32-bit-linux-kernel/linux-headers-3.17.0-031700-generic_3.17.0-031700.201410060605_i386.deb /tmp/

cp 32-bit-linux-kernel/linux-headers-3.17.0-031700_3.17.0-031700.201410060605_all.deb /tmp/

cp 32-bit-linux-kernel/linux-image-3.17.0-031700-generic_3.17.0-031700.201410060605_i386.deb /tmp/

cd /tmp/

sudo dpkg -i linux-headers-3.17.0-*.deb linux-image-3.17.0-*.deb

sudo reboot
