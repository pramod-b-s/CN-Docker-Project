# Script to install Web10g and run TEACUP Docker container

#!/bin/bash
cp patches/linux-3.17.4 /usr/src/

cp patches/web10g-userland-2.0.9 /usr/src/linux-3.17.4/

cd /usr/src/linux-3.17.4/

patch -p1 < /usr/src/linux-3.17.4/web10g-userland-2.0.9/web10g-0.11-3.17.diff

sudo docker load -i teacupimage.tar.gz
# save the image with the name "teacupcontainer"
# save command --> docker save -o teacupimage.tar.gz teacupcontainer
sudo docker run -it teacupcontainer
