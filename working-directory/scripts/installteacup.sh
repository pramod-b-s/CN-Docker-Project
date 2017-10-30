# Script to install Web10g and run TEACUP Docker container

#!/bin/bash
cd /usr/src

wget https://www.linux-mips.org/pub/linux/mips/kernel/v3.x/linux-3.17.4.tar.xz

tar -xvf linux-3.17.4.tar.xz

cd linux-3.17.4

wget https://www.web10g.org/images/Software/Web10G_Kernel_Patch_and_API_Packages/web10g-userland-2.0.9.tar.gz

tar -xvf web10g-userland-2.0.9.tar.gz

cd web10g-userland-2.0.9

cd ..

patch -p1 < /usr/src/linux-3.17.4/web10g-userland-2.0.9/web10g-0.11-3.17.diff

sudo docker import teacupimage.tar teacupdocker:teacup

sudo docker run -it teacupdocker:teacup