#!/bin/bash

if [ -f /etc/os-release ]; then
    source /etc/os-release
else
    exit 1
fi

case ${ID} in
    debian|ubuntu )     wget --quiet http://repo.fastpanel.direct/install/debian.sh -O /tmp/$$_install_fastpanel.sh
                        ;;
    centos|almalinux|rocky )            wget --quiet http://repo.fastpanel.direct/install/centos.sh -O /tmp/$$_install_fastpanel.sh 
                        ;;
    * )                 echo "Can\'t detect OS. Please check the /etc/os-release file.'"
                        exit 1
esac

bash /tmp/$$_install_fastpanel.sh $@
rm /tmp/$$_install_fastpanel.sh
