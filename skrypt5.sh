#!/bin/bash

while getopts "n:m:a:" OPTION
do
case $OPTION in

    n) CZAS="$OPTARG"
      akcja1=`find -mtime -$CZAS`;;
    m) MASKA=$OPTARG
       akcja2=`find -name "*$MASKA"`;;
    a) NAZWA="$OPTARG"
       tar -zcvf $NAZWA.tar.gz $akcja1 $akcja2;;
    ?) echo "Brakuje argumentu"
    exit 1;;  

esac
done


