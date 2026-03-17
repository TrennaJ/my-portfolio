#!/bin/bash

# 1. Fix the System Identity File
sudo chmod 640 /etc/shadow
sudo chown root:shadow /etc/shadow

# 2. Secure the Local Vault
mkdir -p ~/Vault
chmod 700 ~/Vault
# Note: If you have a secrets.txt, secure it to 600 as well:
touch ~/Vault/secrets.txt
chmod 600 ~/Vault/secrets.txt

echo "System Hardening Complete."
