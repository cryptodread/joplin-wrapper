#!/bin/bash

set -a

# Display current installed version and help
echo "Balance of Satoshis - Version: "
bos --version
echo "Configuring Balance of Satoshis..."
mkdir -p /root/.bos/embassy
chmod -R a+x /root/.bos
mv ../credentials.json /root/.bos/embassy/credentials.json
chmod a+x /root/.bos/embassy/credentials.json
echo "export BOS_DEFAULT_SAVED_NODE=embassy" >> /etc/bash.bashrc
echo "export NODE_OPTIONS=--openssl-legacy-provider" >> /etc/bash.bashrc
source /etc/bash.bashrc
echo "Checking for peers..."

# Starting command line
while true;
do export BOS_DEFAULT_SAVED_NODE=embassy;
export NODE_OPTIONS=--openssl-legacy-provider;
bos peers;
sleep 20000;
done

