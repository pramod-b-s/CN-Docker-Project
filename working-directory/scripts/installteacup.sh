# Script to install Web10g and run TEACUP Docker container

#!/bin/bash
cd /usr/src

#!/bin/bash
wget https://www.linux-mips.org/pub/linux/mips/kernel/v3.x/linux-3.17.4.tar.xz

#!/bin/bash
tar -xvf linux-3.17.4.tar.xz

#!/bin/bash
cd linux-3.17.4

#!/bin/bash
wget https://www.web10g.org/images/Software/Web10G_Kernel_Patch_and_API_Packages/web10g-userland-2.0.9.tar.gz

#!/bin/bash
tar -xvf web10g-userland-2.0.9.tar.gz

#!/bin/bash
cd web10g-userland-2.0.9

#!/bin/bash
cd ..

#!/bin/bash
patch -p1 < /usr/src/linux-3.17.4/web10g-userland-2.0.9/web10g-0.11-3.17.diff

#!/bin/bash
sudo docker import teacupimage.tar teacupdocker:teacup

#!/bin/bash
sudo docker run -it teacupdocker:teacup