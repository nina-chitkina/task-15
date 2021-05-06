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
    
    --mkdir|--make-directory)
    MKDIR="$2"
    shift #past argument
    shift 
    mkdir ${MKDIR}
    echo
    ;;
    
    -u|--to-uppercase)
    U="$2"
    shift #past argument
    shift
    echo $(echo $U | tr a-z A-Z ) 
    echo
    ;;
    
    -l|--to-lowercase)
    L="$2"
    shift #past argument
    shift
    echo $(echo $L | tr A-Z a-z ) 
    echo
    ;;
    
    -uf|--to-uppercase-first)
    UF=$2
    shift #past argument
    shift
    UF=`echo ${UF:0:1} | tr  '[a-z]' '[A-Z]'`${UF:1}
    echo $UF
    ;;
    
    -lf|--to-lowercase-first)
    LF=$2
    shift #past argument
    shift
    LF=`echo ${LF:0:1} | tr  '[A-Z]' '[a-z]'`${LF:1}
    echo $LF
    ;;
    
    -random-text)
    RANDOMTX=$2
    shift #past argument
    shift
    if ! command -v fortune &> /dev/null
	then
    	sudo apt-get update -y
    	sudo apt-get install -y fortune
    	echo `fortune`
    else 
        echo `fortune`
    fi
    ;;
    
    -random-number)
    shift #past argument
    echo $RANDOM
    ;;
    
    --git-keep)
    GITKEEP=$2
    shift #past argument
    shift
    echo $GITKEEP/.gitkeep
    touch $GITKEEP/.gitkeep
    echo done
    ;;
    
    -h|--help)
    shift #past argument
    echo -e "
    assignments.sh [options]
    
    options:
\t-h | --help\tHELP; 
\t-n | --name\tNAME; 
\t-d| --date\tDate;
\t--mkdir | --make-directory\tMAKE DIRECTORY;
\t-u | --to-uppercase\tLOWER TO UPPER;
\t-uf | --to-uppercase-first\tFIRST CHARACTER UPPER CASE;
\t-lf | --to-lowercase-first\tFIRST CHARACTER LOWER CASE;
\t--git-keep\tMAKING HIDEN DIRECTORY OF GIT KEEP;
\t-random-text\tGENERATING RANDOM TEXT;
\t-random-number\tGENERATING RANDOM NUMBER;
  " 
echo
    ;;

esac
done
set -- "${POSITIONAL[@]}" # restore positional parameters








