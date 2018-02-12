#!/bin/bash
#This script will output information about our Pictures directory contents.

#Count the number of files in target directory (~/Pictures).
echo -n "The number of files in this directory is " 
  ls ~/Pictures | wc -l 
#Output the total filesize.
echo -n "totaling "
  du -h ~/Pictures

