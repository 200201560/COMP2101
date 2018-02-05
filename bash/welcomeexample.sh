#!/bin/bash
#This script produces the dynamic output from the week 2 slide.

hostname=$(hostname)
title="Beef Supreme"
export MYNAME="Norbert"
today=$(date +%A)

#echo "
#Welcome to Planet $hostname, $title $MYNAME
#Today is $today.
#"

cat <<EOF
Welcome to Planet $hostname, $title $MYNAME
Today is $today.
EOF
