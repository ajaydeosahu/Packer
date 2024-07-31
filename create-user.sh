#!/bin/bash
sudo useradd -c "root-user" -m root-user
sudo echo "root-user:root" | chpasswd
sudo usermod -a -G sudo root-user
