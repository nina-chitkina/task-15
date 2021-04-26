#!/bin/bash

POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -n|--name)
    NAME="$2"
    shift # past argument
    shift # past argument
    echo "Hello, ${NAME}"
    ;;
    
    -d|--date)
    shift #past argument
    echo -e "
\tToday is $(date +"%A, %m %d %Y %H:%M") "
    echo
    ;;
    -h|--help)
    shift #past argument
    echo -e "
    assignments.sh [options]
    
    options:
\t-h | --help\tHELP; 
\t-n | --name\tNAME; 
\t-d| --date\tDate;
  " 
echo
    ;;

esac
done
set -- "${POSITIONAL[@]}" # restore positional parameters








