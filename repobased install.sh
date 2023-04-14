#!/bin/bash

# Install Centrify repo
curl -1sLf 'https://cloudrepo.centrify.com/WWpAEkSLEAprpAxI/rpm-redhat/cfg/setup/bash.rpm.sh' | sudo -E bash

# Install CentrifyDC package
yum install -y centrifyDC

# Join server to domain
adjoin -s nameofdomin

# Check joining status
adinfo
