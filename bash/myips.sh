#!/bin/bash
# This script will output various networking interface information.

#Fetch and output External IP.
echo -n External IP:" "
  curl icanhazip.com
#Fetch and output Internal IP.
echo -n Internal IP:" "
  hostname -I
#Fetch and output IPv6 IP.
echo -n IPv6 IP:" "
  ifconfig ens33|grep inet|sed -e 's/.*addr: //' -e 's/.*addr://' -e 's/ .*//'|grep [[:print:]].

echo "I am process # $$"
