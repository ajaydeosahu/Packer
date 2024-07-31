#!/bin/bash

sudo ua attach C13G9KSNFSFai5PNeFtKZdw72vNYa
sudo ua enable cis
sudo /usr/share/ubuntu-scap-security-guides/cis-hardening/Canonical_Ubuntu_20.04_CIS-harden.sh lvl1_server
sudo /usr/share/ubuntu-scap-security-guides/cis-hardening/Canonical_Ubuntu_20.04_CIS-harden.sh lvl1_workstation
sudo /usr/share/ubuntu-scap-security-guides/cis-hardening/Canonical_Ubuntu_20.04_CIS-harden.sh lvl2_server
sudo /usr/share/ubuntu-scap-security-guides/cis-hardening/Canonical_Ubuntu_20.04_CIS-harden.sh lvl2_workstation
