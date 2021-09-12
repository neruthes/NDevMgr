#!/bin/bash

### Step 0: Install packages
emerge git gentoo-kernel-bin tinc shadowsocks-libev
rc-update add sshd
rc-update add tincd

### Step 1: SSH public keys
mkdir -p /root/.ssh
cd /root/.ssh
curl 'https://neruthes.xyz/authorized_keys' -o /root/.ssh/authorized_keys

### Step 2: Initialize interactive shell
mkdir -p /root/DEV
cd /root/DEV
git clone git@github.com:neruthes/NDevMgr
git clone git@github.com:neruthes/NDevShellRC
printf -- '\n\n### NDevShellRC\n\n' >> /etc/profile
echo 'DEV_HOME_DIR="/root/DEV"' >> /etc/profile
echo 'source $DEV_HOME_DIR/index.linux.sh' >> /etc/profile
source /etc/profile

### Step 3: Initialize VPN

