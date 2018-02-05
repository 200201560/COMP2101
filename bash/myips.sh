#!/bin/bash
# This script will output various networking interface information.

#Fetch and output External IP.
echo -n External:" "
  curl icanhazip.com
#Fetch and output Internal IP.
echo -n Internal:" "
  hostname -I
#Fetch and output IPv6 IP.
echo -n IPv6:" "
  ip addr show dev ens33 | sed -e's/^.*inet6 \([^ ]*\)\/.*$/\1/;t;d'

#Output default gateway for ens33.
echo -n Gateway:" "
  ip route | grep default

  
#echo "I am process # $$"
