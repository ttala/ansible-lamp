#!/bin/bash

sudo apt update && sudo apt install net-tools 2>/dev/null

IP=$(hostname -I | awk '{print $2}')
echo "ssh-copy-id vagrant@$IP"