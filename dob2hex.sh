#!/bin/bash

fileToConv=$1
filename=${fileToConv%%.*}

if [[ "${fileToConv: -4}" == ".dob" ]];
then
printf "Converting $1\n"
xxd -p $fileToConv | tr -d \\n | cut -c 4- >| ${filename}-hex.txt
printf "\nFile saved to ${filename}-hex.txt\n"
else
printf "Unexpected extension or not a dob file. Please use a dob file generated by PictureExDemo which ends with .dob extension!\n"
fi

printf "\nExiting, have a nice day!\n"
