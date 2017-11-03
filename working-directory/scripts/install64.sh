# Script to install Linux 3.17 kernel on 64 bit Ubuntu system

#!/bin/bash
cp 64-bit-linux-kernel/linux-headers-3.17.0-031700-generic_3.17.0-031700.201410060605_amd64.deb /tmp/

cp 64-bit-linux-kernel/linux-headers-3.17.0-031700_3.17.0-031700.201410060605_all.deb /tmp/

cp 64-bit-linux-kernel/linux-image-3.17.0-031700-generic_3.17.0-031700.201410060605_amd64.deb /tmp/

cd /tmp/

sudo dpkg -i linux-headers-3.17.0-*.deb linux-image-3.17.0-*.deb

sudo reboot
