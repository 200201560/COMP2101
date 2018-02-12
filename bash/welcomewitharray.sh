#!/bin/bash

titles=("User" "Guest" "Superuser" "Administrator" "Tester" "Null")
title_index=$((RANDOM % ${#titles[@]}))

title=${titles[$title_index]}
hostname=$(hostname)
myname="Norbert"
weekday=$(date +%A)

welcome_message="
Welcome to planet $hostname, $title $myname.
Today is $weekday.
"

echo $welcome_message | cowsay -f dragon
