#!/bin/bash

debug=0
declare -a stuffToProcess

function usagehelp {
    echo "Usage: $0 [-d level] [-h]"
    }


function errormessage {
  echo "$1" >&2
  #echo "$1" | logger -t "$0" -i -p user.warning
}

errormessage "some problem"

while [ $# -gt 0 ]; do
    case "$1" in
        -h | --help )
          echo "Usage: $0 [-d level] [-h]"
          exit 0
          ;;
        -d | --debug )
          if [[ "$2" =~ ^[1-9]$ ]]; then
            debug="$2"
            shift
            echo "Debug mode ON, level $debug"
          else
      echo "Cannot set debug without a debug level from 1 to 9" >&2
      exit 2
          fi
          ;;
      * )
          stuffToProcess+=("$1")
          ;;
      esac
      shift
done
[ ${#stuffToProcess[@]} ] && echo "Will do work on ${stuffToProcess[@]} (${#stuffToProcess[@]} items)"
