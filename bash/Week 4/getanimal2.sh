#!/bin/bash

colours=("red" "green" "blue" "yellow")
declare -A animals
animals=(["red"]="cardinal" ["green"]="frog" ["blue"]="lobster" ["yellow"]="duckiraffe")
read -p "Give me a number from 1-${#colours[@]}: " number
